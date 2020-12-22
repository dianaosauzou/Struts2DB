package com.admin;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.action.LoginAction;



public class Admin1 {
	
	public static boolean Login(LoginAction loginAction) throws ClassNotFoundException{
		boolean status = false;
		 Class.forName("com.mysql.jdbc.Driver");
		try { Connection conn;
		conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/members", "root", "root");
		
		
		
		PreparedStatement logUser = conn.prepareStatement("select * from userstable where username =? and password =?;");
		logUser.setString(1, loginAction.getUserame());
		logUser.setString(2, loginAction.getPassword());
		
		ResultSet rs = logUser.executeQuery();
		status=rs.next();
		
		
		} catch (SQLException e) {
		
		System.out.println("Error, please try again");
		
	}
		
		return status;
		
	}

	
    
}
