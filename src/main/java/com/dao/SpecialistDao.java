package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Specalist;

public class SpecialistDao {
	private Connection conn;

	/**
	 * @param conn
	 */
	public SpecialistDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addSpecialist (String spec) {
		boolean f=false;
		try {
			String query="insert into specialist(spec_name) values(?)";
			PreparedStatement pst=conn.prepareStatement(query);
			pst.setString(1, spec);
			
			
			int i=pst.executeUpdate();
			if (i==1) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public List<Specalist> getAllSpecalists() {
		List<Specalist> list = new ArrayList<Specalist>();
		Specalist s=null;
		
		try {
			String sql="select * from specialist";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs= pst.executeQuery();
			
			while(rs.next()) {
				s = new Specalist();
				s.setId(rs.getInt(1));
				s.setSpecialistName(rs.getString(2));
				list.add(s);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
		
	}
	

}
