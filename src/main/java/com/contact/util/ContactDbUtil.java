package com.contact.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.DBConnectionUtil;
import com.contact.contactservice.ContactService;
import com.contact.model.Contact;

public class ContactDbUtil implements ContactService{
	private static Connection com = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	private static PreparedStatement PraparedStmt = null;
	private static boolean isSuccess;
	
	
	//insert query
	@Override
	public boolean insertContact(String name, String email, String subject, String message) {
		
		isSuccess = false;
		
		try {
			Connection com = DBConnectionUtil.getConnection();
			Statement state = com.createStatement();
			
			String sql = "INSERT INTO contactus VALUES(0, '"+name+"', '"+email+"', '"+subject+"', '"+message+"')";
			
			int result = state.executeUpdate(sql);
			
			if(result > 0) {
				
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
			com.close();
		}
			
		catch(Exception ex) {
			
			ex.printStackTrace();
		}
		return isSuccess;
	}
	
	
	//update query
	@Override
	public boolean updateContact(String messageId, String name, String email, String subject, String message) {
		
		try {
			int conId = Integer.parseInt(messageId);
			com = DBConnectionUtil.getConnection();
			state = com.createStatement();
			
			String sql = "UPDATE contactus SET name = '"+name+"', email = '"+email+"', subject='"+subject+"', message='"+message+"' WHERE messageId = '"+conId+"'";
			
			int rs = state.executeUpdate(sql);
			
			if(rs > 0) {
				
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
			com.close();
		}
			
		catch(Exception ex) {
			
			ex.printStackTrace();
		}
		return isSuccess;
	}
	
	
	//retrieve data
	@Override
	public List<Contact> getContactDetails(){
		
		
		List<Contact> contact = new ArrayList<>();
		
		try {
			com = DBConnectionUtil.getConnection();
			state = com.createStatement();
			String sql = "SELECT * FROM contactus";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				int messageId = rs.getInt("messageId");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String subject = rs.getString("subject");
				String message = rs.getString("message");
				
				Contact c = new Contact(messageId, name, email, subject, message);
				contact.add(c);
			}
			
		}
		
		catch(Exception ex){
			ex.printStackTrace();
		}
		return contact;
	}
	
	
	//delete query
	@Override
	public boolean deleteContact(String messageId) throws SQLException {
			
		try {
			int conId = Integer.parseInt(messageId);
			com = DBConnectionUtil.getConnection();
				
			String sql = "DELETE FROM contactus WHERE messageId= ? ";
			
			PraparedStmt = com.prepareStatement(sql);
			PraparedStmt.setInt(1, conId);
			
			int resultSet = PraparedStmt.executeUpdate();
				
			if(resultSet > 0) {
					
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}

			com.close();
		
		return isSuccess;
		}
			
		finally{
			com.close();
		}
	}	
}