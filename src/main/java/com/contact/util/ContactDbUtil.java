package com.contact.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.DBConnectionUtil;
import com.contact.model.Contact;

public class ContactDbUtil {
	private static Connection com = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
	
	//insert query
	public static boolean insertContact(String name, String email, String subject, String message) {
		
		boolean isSuccess = false;
		
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
	public static boolean updateContact(String subject, String message, String email) {
		
		boolean isSuccess = false;
		
		try {
			com = DBConnectionUtil.getConnection();
			state = com.createStatement();
			
			String sql = "UPDATE Contactus SET subject='"+subject+"', message='"+message+"', WHEARE email = '"+email+"'";
			
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
	
	
	//retrieve data
	public static List<Contact> getContactDetails(String messageId){
		
		int conId = Integer.parseInt(messageId);
		
		ArrayList<Contact> contact = new ArrayList<>();
		
		try {
			com = DBConnectionUtil.getConnection();
			state = com.createStatement();
			String sql = "SELECT * FROM Contactus WHERE messageId = '"+conId+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				int messageId1 = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String subject = rs.getString(4);
				String message = rs.getString(5);
				
				Contact c = new Contact(messageId1, name, email, subject, message);
				contact.add(c);
			}
			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return contact;
	}
	
	
	//delete query
	public static boolean deleteContact(String messageId) {
			
		int conId = Integer.parseInt(messageId);
			
		try {
			com = DBConnectionUtil.getConnection();
			state = com.createStatement();
				
			String sql = "DELETE FROM Contactus WHERE messageId='"+conId+"'";
				
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
	
}
