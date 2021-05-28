///////////////////////////////////////
//				AUTHOR				 //
//			RANASINGHE TKSA          //  
//			  IT20042738			 //
///////////////////////////////////////

package com.user.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.*;
import com.user.model.User;
import com.user.userservice.EmployeeService;
import com.user.userservice.ICustomerService;

public class EmployeeDbUtil implements EmployeeService {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement PraparedStmt = null;
	private static boolean isSuccess;
	
	
	/*insert query*/
	@Override
	public  boolean insertEmployeeDetails(String name, String email, String contactNumber, String password, String isActive,String type) {
		
		isSuccess = false;

		try {
			
			int typeId = Integer.parseInt(type);
			con = DBConnectionUtil.getConnection();
			stmt = con.createStatement();												
			String sql = "insert into user values (0, '"+name+"', '"+email+"','"+contactNumber+"','"+password+"', '1', '"+typeId+"')";
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
	@Override
	public  boolean updateEmployee(String userId, String name, String email, String contactNumber, String password) {
		
		try {
				int empId = Integer.parseInt(userId);
				con = DBConnectionUtil.getConnection();
				stmt = con.createStatement();
				String sql = "update user set  name ='"+name+"', email ='"+email+"', phone = '"+contactNumber+"',password = '"+password+"' where userId = '"+empId+"' ";
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
	@Override
	public  List<User> getEmployeeDetails(){
		
		
		ArrayList<User> user = new ArrayList<>();
		
		try {
			con = DBConnectionUtil.getConnection();
			stmt = con.createStatement();
			String sql = "select userId,name, email,phone, password from user where isActive = 1 and typeId != 1 ";
			rs = stmt.executeQuery(sql); 
			
			while(rs.next()) {
				int userID = rs.getInt("userId");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				String password = rs.getString("password");
				
				User ep = new User(userID, name, email,phone,password);
				user.add(ep);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	
	
	//delete query
	@Override
	public  boolean deleteEmployee(String userID) throws SQLException{
		
		try {
			
			int employeeId = Integer.parseInt(userID);
			con = DBConnectionUtil.getConnection();
			
			String sql = "DELETE FROM user WHERE userId = ? ";
			
			PraparedStmt = con.prepareStatement(sql);
			PraparedStmt.setInt(1, employeeId);
			
			int resultSet = PraparedStmt.executeUpdate();
			if(resultSet > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
			return isSuccess;
			
		}finally{
			con.close();
		}
	}
		
}
