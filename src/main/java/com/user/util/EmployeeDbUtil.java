package com.user.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.DBConnectionUtil;
import com.user.model.User;

public class EmployeeDbUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
	
	/*insert query*/ 
	public static boolean insertEmployeeDetails(String name, String email, String contactNumber, String password, String type) {
		
		isSuccess = false;

		try {
			
			int typeId = Integer.parseInt(type);
			con = DBConnectionUtil.getConnection();
			stmt = con.createStatement();												
			String sql = "insert into user values (0, '"+name+"', '"+email+"','"+contactNumber+"','"+password+"', 1, '"+typeId+"')";
			int rs = stmt.executeUpdate(sql); 
			
			if(rs > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			con.close();
					
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	
	/*update query*/
	public static boolean updateEmployee(String name, String email, String contactNumber, String password, String type) {
		try {
			
				con = DBConnectionUtil.getConnection();
				stmt = con.createStatement();
				String sql = "update Employee set (1, name ='"+name+"', email ='"+email+"',contactno = '"+contactNumber+"',password = '"+password+"', 1, whoyouare = '"+type+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					
					isSuccess = true;
				}
				else {
					
					isSuccess = false;
				}
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	
	
	/* retrieve query */
	public static List<User> getEmployeeDetails(int userId){
		ArrayList<User> user = new ArrayList<>();
		/* if you have a with UserID, change id type as a String*/
		
		try {
			con = DBConnectionUtil.getConnection();
			stmt = con.createStatement();
			String sql = "select userId, name, email, phone from User where id = '"+ userId+"'";
			rs = stmt.executeQuery(sql); 
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				//String password = rs.getString(5);
				//int type = rs.getString(5);
				
				User u = new User(userId, name, email,phone);
				user.add(u);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
		
}
