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
import com.user.userservice.ICustomerService;


public  class UserDbUtil implements ICustomerService {
	
	private static Connection myCon = null;
	private static Statement myStmt = null;
	private static ResultSet myRs = null;
	private static PreparedStatement myPreparedStmt = null;
	
	private static boolean isSuccess;

	@Override
	public User validateLogin(String email, String password) {
		
		User user = null;
		try {
			
			myCon = DBConnectionUtil.getConnection();
			String sql = "SELECT * FROM user WHERE email = ? AND password = ? ";
			myPreparedStmt = myCon.prepareStatement(sql);
			
			myPreparedStmt.setString(1, email);
			myPreparedStmt.setString(2,password);
			
			myRs = myPreparedStmt.executeQuery();
			
			
			
			
			if(myRs.next()) {
				
				user = new User();
				user.setUserId(myRs.getInt("userId"));
				user.setName(myRs.getString("name"));
				user.setType(myRs.getInt("typeId"));
			}
			
			myCon.close();
		}catch(Exception ex) {
				
				ex.printStackTrace();
			}
			
		 return user;
		 
		 
	
		
	}

	@Override
	public boolean addUser(String name, String email, String phone, String password) {
		 isSuccess = false;
			
			try {
				
				/*myCon = DBConnectionUtil.getConnection();
				myStmt = myCon.createStatement();
				String sql = "INSERT INTO user VALUES(0, '"+name+"', '"+email+"','"+phone+"', '"+password+"','1','1')";
				int resultSet = myStmt.executeUpdate(sql);*/
				
				myCon = DBConnectionUtil.getConnection();
				String sql = "INSERT INTO user VALUES(0, ?, ?, ?, ?,'1','1')";
				myPreparedStmt = myCon.prepareStatement(sql);
				
				myPreparedStmt.setString(1, name);
				myPreparedStmt.setString(2, email);
				myPreparedStmt.setString(3, phone);
				myPreparedStmt.setString(4, password);
				
				int resultSet = myPreparedStmt.executeUpdate();
				
				// check execute result set value
				if(resultSet > 0) {
					
					isSuccess = true;
				}
				else
				{
					isSuccess = false;
				}
				/*
				 * close database connection
				 */
				myCon.close();
							
			}
			catch(Exception ex) {
				
				ex.printStackTrace();
			}
			return isSuccess;
	}

	@Override
	public boolean updateUserDetails(String userId,String userName, String userEmail, String mobileNumber, String password) {
		try {
			int customerId = Integer.parseInt(userId);
			
			myCon = DBConnectionUtil.getConnection();
			String sql = "UPDATE user SET name = ?, email = ?, phone = ?, password = ? where userId = ?";
			myPreparedStmt = myCon.prepareStatement(sql);
			
			
			myPreparedStmt.setString(1, userName);
			myPreparedStmt.setString(2, userEmail);
			myPreparedStmt.setString(3, mobileNumber);
			myPreparedStmt.setString(4, password);
			myPreparedStmt.setInt(5, customerId);
			
			int resultSet = myPreparedStmt.executeUpdate();
			
			if(resultSet > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			
			myCon.close();
		}
		catch(Exception ex) {
			
			ex.printStackTrace();
		}
		return isSuccess;
	}

	@Override
	public List<User> getCotomersDetails() {
		
		List<User> customers = new ArrayList<>();
		
		try {
			
			myCon = DBConnectionUtil.getConnection();
			myStmt = myCon.createStatement();
			String sql = "SELECT userId, name,email,phone FROM user WHERE isActive = 1 AND typeId = 1";
			myRs = myStmt.executeQuery(sql);
			
			//process result set
			while(myRs.next()) {
				
				int userId = myRs.getInt("UserId");
				String userName = myRs.getString("name");
				String userEmail = myRs.getString("email");
				String userMobileNumber = myRs.getString("phone");
				
				User tempCustomer = new User(userId, userName,userEmail,userMobileNumber);
				
				customers.add(tempCustomer);
				//myCon.close();
			}
			
		}catch(Exception ex) {
			
			ex.printStackTrace();
			
		}
		return customers;
	}

	@Override
	public boolean deleteCustomer(String userId) {
		
		try {
			
			int customerId = Integer.parseInt(userId);
			
			myCon = DBConnectionUtil.getConnection();
			String sql = "DELETE FROM user WHERE userId = ?";
			
			myPreparedStmt = myCon.prepareStatement(sql);
			myPreparedStmt.setInt(1, customerId);
	
			int resultSet = myPreparedStmt.executeUpdate();
			
			if(resultSet > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			
			myCon.close();
			
			
			
		}catch(Exception ex) {
			
			ex.printStackTrace();
		}
		
		
		return isSuccess;	
			
		
	}

	@Override
	public List<User> getOneCustomerDetails(String customerId) {
		
		List<User> customers = new ArrayList<>();
		
		try {
			
			int cusId = Integer.parseInt(customerId);
			myCon = DBConnectionUtil.getConnection();
			//myStmt = myCon.createStatement();
			String sql = "SELECT userId, name,email,phone,password FROM user WHERE userId = ? ";
			myPreparedStmt = myCon.prepareStatement(sql);
			
			//myRs = myStmt.executeQuery(sql);
			myPreparedStmt.setInt(1,cusId );
			myRs = myPreparedStmt.executeQuery();
			//process result set
			while(myRs.next()) {
				
				int userId = myRs.getInt("UserId");
				String userName = myRs.getString("name");
				String userEmail = myRs.getString("email");
				String userMobileNumber = myRs.getString("phone");
				String userPassword = myRs.getString("password");
				
				User tempCustomer = new User(userId, userName,userEmail,userMobileNumber,userPassword);
				
				customers.add(tempCustomer);
				//myCon.close();
			}
			
		}catch(Exception ex) {
			
			ex.printStackTrace();
			
		}
		return customers;
	}
	
	
	
}