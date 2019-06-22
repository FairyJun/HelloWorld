package com.jkxy.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.jkxy.model.UserTable;
import com.jkxy.model.stuInfo;
import com.mysql.jdbc.PreparedStatement;

public class stuInfoservice {
	private Connection conn;
	private java.sql.PreparedStatement pstmt;
	
	public stuInfoservice()
	{
		conn=new com.jkxy.conn.conn().getCon();
	}
	public boolean addStu(stuInfo stu)
	{
		try {
			pstmt=conn.prepareStatement("insert into glassesform(glasses_version,glasses_name,glasses_made,glasses_price,glasses_mess)"
					+ "values(?,?,?,?,?)"); 
				
			pstmt.setString(1, stu.getGlasses_version());
			pstmt.setString(2, stu.getGlasses_name());
			pstmt.setString(3, stu.getGlasses_made());
			pstmt.setString(4, stu.getGlasses_price());
			pstmt.setString(5, stu.getGlasses_mess());
			pstmt.executeUpdate();
			return true;
		}
		catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	public List queryAllStu()
	{
		List stus = new ArrayList();
		try {
			pstmt=conn.prepareStatement("select*from glassesform");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				stuInfo stu=new stuInfo();
				stu.setGlasses_version(rs.getString(1));
				stu.setGlasses_name(rs.getString(2));
				stu.setGlasses_made(rs.getString(3));
				stu.setGlasses_price(rs.getString(4));
				stu.setGlasses_mess(rs.getString(5));
				stus.add(stu);
			}
			return stus;
		}catch(SQLException e) {
			return null;
		}
	}
	public stuInfo queryStubyGLASSES_NAME(String glasses_name)
	{
		//List stus = new ArrayList();
		try {
			pstmt=conn.prepareStatement("select*from glassesform where glasses_name=?");
			pstmt.setString(1, glasses_name);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				stuInfo stu=new stuInfo();
				stu.setGlasses_version(rs.getString(1));
				stu.setGlasses_name(rs.getString(2));
				stu.setGlasses_made(rs.getString(3));
				stu.setGlasses_price(rs.getString(4));
				stu.setGlasses_mess(rs.getString(5));
				//stus.add(stu);
				return stu;
			}
			return null;
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	public boolean updateStu(stuInfo stu)
	{
		try {
			pstmt=conn.prepareStatement("update glassesform set glasses_version=?,glasses_name=?,glasses_made=?,glasses_price=?,glasses_mess=? where glasses_name=?");
			pstmt.setString(1, stu.getGlasses_version());
			pstmt.setString(2, stu.getGlasses_name());
			pstmt.setString(3, stu.getGlasses_made());
			pstmt.setString(4, stu.getGlasses_price());
			pstmt.setString(5, stu.getGlasses_mess());
			pstmt.setString(6, stu.getGlasses_name());
			pstmt.executeUpdate();
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	public boolean deleteStu(String glasses_name) {
		try {
			pstmt=conn.prepareStatement("delete from glassesform where glasses_name=?");
			pstmt.setString(1,glasses_name);
			pstmt.executeUpdate();
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
