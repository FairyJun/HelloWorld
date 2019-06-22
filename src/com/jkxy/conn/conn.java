package com.jkxy.conn;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class conn {
	public Connection getCon()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/glasses?user=root&password=ztj12129&characterEncoding=utf-8";
			String user="root";
			String password="ztj12129";
			Connection conn=(Connection) DriverManager.getConnection(url, user, password);
			System.out.println(conn.getMetaData().getURL());
			return conn;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
}
