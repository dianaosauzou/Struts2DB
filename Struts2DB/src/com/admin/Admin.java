package com.admin;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.action.LoginAction;
import com.action.RegisterAction;
import com.opensymphony.xwork2.ActionSupport;

public class Admin extends ActionSupport{


	public static Connection conn() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		//return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/struts2sample", "root", "");
		return DriverManager.getConnection(				"jdbc:mysql://localhost:3306/members?autoReconnect=true&useSSL=false", "root", "root");
	}

	public static int register(RegisterAction ra) {
		int flag = 0;
		try {
			String INSERT_USERS_SQL ="INSERT into userstable" + "(username, password, email, age)" + "VALUES(?, ?, ?, ?);";
			
			PreparedStatement ps = conn().prepareStatement(INSERT_USERS_SQL);
			ps.setInt(1, 1);
			ps.setString(1, ra.getUsername());
			ps.setString(2, ra.getPassword());
			ps.setString(3, ra.getEmail());
			ps.setInt(4, ra.getAge());
	
			
			flag = ps.executeUpdate();
					ps.close();
;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
}
