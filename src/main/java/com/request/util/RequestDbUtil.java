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
				String  venue, String address, String capacity, String attendance,
				String pay , String budget, String tickets ) {
			
			boolean isSuccess = false;
			
			try {
				conn = DBConnectionUtil.getConnection();
				statement = conn.createStatement();
				
				String sql = "INSERT INTO request VALUES(0, '"+name+"',  '"+email+"', '"+phone+"', '"+event+"','"+date+"', '"+time+"', '"+description+"', '"+venue+"', '"+address+"', '"+capacity+"','"+attendance+"',  '"+pay+"', '"+budget+"', '"+tickets+"',0)";
				
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
					String  venue, String address, String capacity, String attendance,
					String pay , String budget, String tickets ) {
			 
			 boolean isSuccess = false;
		      // Open a connection
		      try{
		    	  conn = DBConnectionUtil.getConnection();
					statement = conn.createStatement();
		 		      
		         String sql = "UPDATE request SET Name = '"+name+"', event= '"+event+"',date = '"+date+"', time = '"+time+"', description = '"+description+"', venue = '"+venue+"', address = '"+address+"', capacity= '"+capacity+"',attendance= '"+attendance+"', pay = '"+pay+"', budget = '"+budget+"',ticket =  '"+tickets+"'";
		         
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
			String sql = "SELECT * FROM request WHERE status = 0";
			ResultSet result = statement.executeQuery(sql);
			
			while(result.next()) {
				int reqId = result.getInt("requestId");
				String name = result.getString("name");
				String email = result.getString("email");
				String phone = result.getString("phone");
				String event = result.getString("event");
				String date =  result.getString("date");
				String time =  result.getString("time");
				String description =  result.getString("description");
				String venue =  result.getString("venue");
				String address =  result.getString("address");
				String capacity =  result.getString("capacity");
				String attendance = result.getString("attendance");
				String pay =  result.getString("pay");
				String budget =  result.getString("budget");
				String tickets =  result.getString("tickets");
				
				Request req = new Request (reqId, name,  email, phone, event, date, time, description, venue, address, capacity, attendance, pay , budget ,tickets);
				requests.add(req);
			}
			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return requests;
	}

//update accepted


public static boolean updateAcceptedRequest(String requestId) {
	 
	 int conId = Integer.parseInt(requestId);
	 boolean isSuccess = false;
     // Open a connection
     try{
   	  conn = DBConnectionUtil.getConnection();
			statement = conn.createStatement();
		      
        String sql = "UPDATE request SET status =  1  WHERE requestId  = '"+conId+"'";
        
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

