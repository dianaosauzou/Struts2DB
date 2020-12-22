package com.action;
import java.util.ArrayList;

import com.admin.Admin;
public class RegisterAction {
	int age;
	String username, password, email;
	
	
	public String execute() throws Exception {

		int var = Admin.register(this);
		if (var > 0) {
			return "SUCCESS";
		} else {
			return "input";
		}
	}

	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}



	
}
