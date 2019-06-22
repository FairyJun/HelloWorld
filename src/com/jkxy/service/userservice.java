package com.jkxy.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jkxy.model.UserTable;
import com.mysql.jdbc.PreparedStatement;

public class userservice {
	private Connection conn;
	private PreparedStatement pstmt;
	
	public userservice()
	{
		conn=new com.jkxy.conn.conn().getCon();
	}
	public boolean valiUser(UserTable user)
	{
		try {
			pstmt=(PreparedStatement) conn.prepareStatement("select * from user where username=? and password=?");
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()) 
				return true;
			else 
				return false;	
		}
		catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
		
	}
}
