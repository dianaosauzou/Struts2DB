package com.action;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.admin.Admin;
import com.admin.Admin1;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	
	int age;
	String username, password, email;
	private SessionMap<String,Object> sessionMap;  
	  
	//getters and setters  
	 @Override
	public void setSession(Map<String, Object> map) {  
	    sessionMap=(SessionMap<String, Object>)map;  
	}  
	
	public String execute() throws Exception {
		
		boolean var = Admin1.Login(this);
		if (var ==true) {
			sessionMap.put("username", username);
			
			return "SUCCESS";
			
		} else {
			return "input";
		

	}
	}
	
	
	
	public String getUserame() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	public String logout() {
		
		sessionMap.remove("username");
		sessionMap.invalidate();
		
		return "LOGOUT";
	}
	

	
}
