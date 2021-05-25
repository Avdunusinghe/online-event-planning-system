package com.request.util;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.DBConnectionUtil;

import com.request.model.Request;

public class RequestDbUtil {
		
	private static Connection conn = null;
	private static Statement statement = null;
	
	
	//insert query
		public static boolean addRequest(String name, String email,
				String phone, String event, String date,  String time, 
				String  venue, String address, String attendance,
				String pay , String budget, String tickets ) {
			
			boolean isSuccess = false;
			
			try {
				conn = DBConnectionUtil.getConnection();
				statement = conn.createStatement();
				
				String sql = "INSERT INTO request VALUES(0,'"+name+"',  '"+email+"', '"+phone+"', '"+event+"','"+date+"', '"+time+"',  '"+venue+"', '"+address+"', '"+attendance+"',  '"+pay+"', '"+budget+"', '"+tickets+"',0)";
				
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
		
		
		 public static boolean updateRequest(String requestId, String name ,  String email,String phone , 
				 String event, String date,  String time, 
					String  venue, String address, String attendance,
					String pay , String budget ) {
			 
			 boolean isSuccess = false;
		      // Open a connection
		      try{
		    	  
		    	  int ReqId = Integer.parseInt(requestId);
		    	  conn = DBConnectionUtil.getConnection();
					statement = conn.createStatement();
		 		   String sql = "UPDATE request SET name = '"+name+"', event= '"+event+"',date = '"+date+"', time = '"+time+"',  venue = '"+venue+"', address = '"+address+"', attendance= '"+attendance+"', pay = '"+pay+"', budget = '"+budget+"' where requestId = '"+ReqId+"'";
		         
		        int result = statement.executeUpdate(sql);
		        
		 		
					if(result > 0) {
						
						isSuccess = true;
					}
					else {
						
						isSuccess = false;
					}
			
				}
				catch(Exception ex) {
					
					ex.printStackTrace();
				}
				return isSuccess;
			}
		
		
		//delete 


public static boolean Requestdelete(String requestId) throws SQLException{
	
	 
	 boolean isSuccess = false;
     // Open a connection
     try{
    	 int covId = Integer.parseInt(requestId);
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
			return isSuccess;
     }
		finally{
			conn.close();
		}
     
	     
     
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
				String venue =  result.getString("venue");
				String address =  result.getString("address");
				String attendance = result.getString("attendance");
				String pay =  result.getString("pay");
				String budget =  result.getString("budget");
				String tickets =  result.getString("tickets");

				Request req = new Request (reqId, name,  email, phone, event, date, time, venue, address, attendance, pay , budget ,tickets);

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
	 

	 boolean isSuccess = false;
     // Open a connection
     try{
    		int covId = Integer.parseInt(requestId);
   	        conn = DBConnectionUtil.getConnection();
			statement = conn.createStatement();
		      
        String sql = "update request set status = '1'  WHERE requestId = '"+covId+"'";
        
       int result = statement.executeUpdate(sql);
       
		
			if(result > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
		}
		catch(Exception ex) {
			
			ex.printStackTrace();
		}
		return isSuccess;
	}

//retrieve accepted request  data
	public static ArrayList<Request> getAcceptedRequestList(){
		
		
		
		ArrayList<Request> requests = new ArrayList<>();
		
		try {
			conn = DBConnectionUtil.getConnection();
			statement = conn.createStatement();
			String sql = "SELECT requestId, name, email,phone,event FROM request WHERE status = 1";
			ResultSet result = statement.executeQuery(sql);
			
			while(result.next()) {
				int requestId = result.getInt("requestId");
				String name = result.getString("name");
				String email = result.getString("email");
				String phone = result.getString("phone");
				String event = result.getString("event");
				
				Request re = new Request (requestId, name,  email, phone, event);
				requests.add(re);
			}
			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return requests;
	}

	public static List<Request> getRequestDetails(String requestId) {
		// TODO Auto-generated method stub
          ArrayList<Request> requests = new ArrayList<>();
		
		try {
			int reqID  = Integer.parseInt(requestId);
			conn = DBConnectionUtil.getConnection();
			statement = conn.createStatement();
			String sql = "SELECT * FROM request WHERE requestId= '"+reqID+"'";
			ResultSet result = statement.executeQuery(sql);
			
			while(result.next()) {
				int reqID1 = result.getInt("requestId");
				String name = result.getString("name");
				String email = result.getString("email");
				String phone = result.getString("phone");
				String event = result.getString("event");
				String date =  result.getString("date");
				String time =  result.getString("time");
				String venue =  result.getString("venue");
				String address =  result.getString("address");
				String attendance = result.getString("attendance");
				String pay =  result.getString("pay");
				String budget =  result.getString("budget");
				String tickets =  result.getString("tickets");
				
				Request re = new Request (reqID1, name,  email, phone, event, date, time, venue, address, attendance, pay , budget ,tickets);
				requests.add(re);
			}
			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return requests;
	
	
	}
}
