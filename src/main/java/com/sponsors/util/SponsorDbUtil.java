package com.sponsors.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.DBConnectionUtil;
import com.sponsors.model.Sponsor;
import com.sponsors.sponsorservice.SponsorService;


public class SponsorDbUtil implements SponsorService{
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement myPstmt = null;
	
	private static boolean isSuccess;
	
	//insert query
	@Override
	public boolean insertSponsor(String name, String email, String address, String phone) {
		
	try {
			
		con = DBConnectionUtil.getConnection();
		String sql = "INSERT INTO sponsors VALUES(0, ?, ?, ?, ?)";
		myPstmt = con.prepareStatement(sql);
		
		myPstmt.setString(1, name);
		myPstmt.setString(2, email);
		myPstmt.setString(3, address);
		myPstmt.setString(4, phone);
		
		int resultSet = myPstmt.executeUpdate();
		
		// check execute result set value
		if(resultSet > 0) {
			
			isSuccess = true;
		}
		else
		{
			isSuccess = false;
		}
	
		con.close();
					
	}
	catch(Exception e) {
		
		e.printStackTrace();
	}
	return isSuccess;
}
	
	//retrieve query
	@Override
	public List<Sponsor> getSponsors() {
		
		List<Sponsor> sponsors = new ArrayList<>();
		
		try {
			
			con = DBConnectionUtil.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT sponsorId, name, email, address,phone FROM sponsors";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				
				int sponsorId = rs.getInt("sponsorId");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String address = rs.getString("address");
				String phone = rs.getString("phone");
				
				Sponsor tempSponsor = new Sponsor(sponsorId, name,email,address,phone);
				
				sponsors.add(tempSponsor);
			
			}
			
		}catch(Exception ex) {
			
			ex.printStackTrace();
			
		}
		return sponsors;
	}
	
	//update query
	@Override
	public boolean updateSponsor(String sponsorId, String name, String email, String address, String phone) {
		try {
			int sponsId = Integer.parseInt(sponsorId);
			
			con = DBConnectionUtil.getConnection();
			String sql = "UPDATE sponsors SET name = ?, email = ?, address = ?, phone = ? where sponsorId = ?";
			myPstmt = con.prepareStatement(sql);
			
			
			myPstmt.setString(1, name);
			myPstmt.setString(2, email);
			myPstmt.setString(3, address);
			myPstmt.setString(4, phone);
			myPstmt.setInt(5, sponsId);
			
			int rs = myPstmt.executeUpdate();
			
			if(rs > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			
			con.close();
		}
		catch(Exception ex) {
			
			ex.printStackTrace();
		}
		return isSuccess;
	}
	
	//delete query
	@Override
	public boolean deleteSponsor(String sponsorId) {
		
		try {
			
			int sponsId = Integer.parseInt(sponsorId);
			
			con = DBConnectionUtil.getConnection();
			String sql = "DELETE FROM sponsors WHERE sponsorId = ?";
			
			myPstmt = con.prepareStatement(sql);
			myPstmt.setInt(1, sponsId);
	
			int resultSet = myPstmt.executeUpdate();
			
			if(resultSet > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			
			con.close();
			
			
			
		}catch(Exception ex) {
			
			ex.printStackTrace();
		}
		
		
		return isSuccess;	
	}	
}