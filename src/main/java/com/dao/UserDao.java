package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDao {
	private Connection conn;

	public UserDao(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean register(User u) {
		boolean f=false;
		try {
			String query ="insert into user(ufullName,uemail,upassword) values(?,?,?) ";
			PreparedStatement pst=conn.prepareStatement(query);
			pst.setString(1, u.getUfullName());
			pst.setString(2, u.getUemail());
			pst.setString(3, u.getUpassword());
			
			int i=pst.executeUpdate();
			if (i==1) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	
	
	public User login(String em, String psw)
	{
		User u=null;
		try {
			String sql="select * from user where uemail=? and upassword=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, em);
			pst.setString(2, psw);
			
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				u=new User();
				u.setUid(rs.getInt(1));
				u.setUfullName(rs.getString(2));
				u.setUemail(rs.getString(3));
				u.setUpassword(rs.getString(4));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}
	

}
