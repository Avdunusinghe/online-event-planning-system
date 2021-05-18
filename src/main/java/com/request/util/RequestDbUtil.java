package com.request.util;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.DBConnectionUtil;
import com.contact.model.Contact;
import com.request.model.Request;

public class RequestDbUtil {
		
	private static Connection conn = null;
	private static Statement statement = null;
	
	
	//insert query
		public static boolean addRequest(String name, String email,
				String phone, String event, String date,  String time, String description, 
				String  venue, String address, String capacity, String attendance, String  facilities, 
				String pay , String budget, String tickets ) {
			
			boolean isSuccess = false;
			
			try {
				conn = DBConnectionUtil.getConnection();
				statement = conn.createStatement();
				
				String sql = "INSERT INTO request VALUES(0, '"+name+"',  '"+email+"', '"+phone+"', '"+event+"','"+date+"', '"+time+"', '"+description+"', '"+venue+"', '"+address+"', '"+capacity+"','"+attendance+"', '"+facilities+"', '"+pay+"', '"+budget+"', '"+tickets+"')";
				
				int result = statement.executeUpdate(sql);
				
				if(result > 0) {
					
					isSuccess = true;
				}
				else
				{
					isSuccess = false;
				}
				
				conn.close();
			}
				
			catch(Exception ex) {
				
				ex.printStackTrace();
			}
			return isSuccess;
		}
		
	//Update query
		
		
		 public static boolean updateRequest(String requestId, String name ,  String email,String phone ,  String event, String date,  String time, String description, 
					String  venue, String address, String capacity, String attendance, String  facilities, 
					String pay , String budget, String tickets ) {
			 
			 boolean isSuccess = false;
		      // Open a connection
		      try{
		    	  conn = DBConnectionUtil.getConnection();
					statement = conn.createStatement();
		 		      
		         String sql = "UPDATE request SET Name = '"+name+"', event= '"+event+"',date = '"+date+"', time = '"+time+"', description = '"+description+"', venue = '"+venue+"', address = '"+address+"', capacity= '"+capacity+"',attendance= '"+attendance+"', facilities = '"+facilities+"', pay = '"+pay+"', budget = '"+budget+"',ticket =  '"+tickets+"' WHERE email '"+email+"'";
		         
		        int result = statement.executeUpdate(sql);
		        
		 		
					if(result > 0) {
						
						isSuccess = true;
					}
					else {
						
						isSuccess = false;
					}
					
					conn.close();
				}
				catch(Exception ex) {
					
					ex.printStackTrace();
				}
				return isSuccess;
			}
		
		
		//delete 


public static boolean Requestdelete(String RequestId) {
	int covId = Integer.parseInt(RequestId);
	 
	 boolean isSuccess = false;
     // Open a connection
     try{
   	  conn = DBConnectionUtil.getConnection();
			statement = conn.createStatement();
		      
        String sql = "DELETE from request  WHERE RequestId  = '"+covId+"'";
        
       int result = statement.executeUpdate(sql);
       
		
			if(result > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			
			conn.close();
		}
		catch(Exception ex) {
			
			ex.printStackTrace();
		}
		return isSuccess;
	}


//retrieve request  data
	public static ArrayList<Request> getRequestList(){
		
		
		
		ArrayList<Request> requests = new ArrayList<>();
		
		try {
			conn = DBConnectionUtil.getConnection();
			statement = conn.createStatement();
			String sql = "SELECT * FROM request WHERE requestId =";
			ResultSet result = statement.executeQuery(sql);
			
			while(result.next()) {
				int requestId = result.getInt(1);
				String name = result.getString(2);
				String email = result.getString(3);
				String phone = result.getString(4);
				String event = result.getString(5);
				String date =  result.getString(6);
				String time =  result.getString(7);
				String description =  result.getString(8);
				String venue =  result.getString(9);
				String address =  result.getString(10);
				String capacity =  result.getString(11);
				String attendance = result.getString(12);
				String facilities =  result.getString(13);
				String pay =  result.getString(14);
				String budget =  result.getString(15);
				String tickets =  result.getString(16);
				
				Request req = new Request (requestId, name,  email, phone, event, date, time, description, venue, address, capacity, attendance, facilities,pay , budget ,tickets, false);
				requests.add(req);
			}
			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return requests;
	}
}
//update accepted

/*
public static boolean updateAcceptedRequest(status) {
	 
	 boolean isSuccess = false;
     // Open a connection
     try{
   	  conn = DBConnectionUtil.getConnection();
			statement = conn.createStatement();
		      
        String sql = "UPDATE request SET status =  1  WHERE ;"
        
       int result = statement.executeUpdate(sql);
       
		
			if(result > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			
			conn.close();
		}
		catch(Exception ex) {
			
			ex.printStackTrace();
		}
		return isSuccess;
	}
}
*/
