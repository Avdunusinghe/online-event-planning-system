package com.user.userservice;

import java.util.List;

import com.user.model.User;

public interface ICustomerService {
	
	static User validateLogin(String email, String password) {
		
		return null;
	}
	
	static boolean addUser(String name, String email, String phone, String password) {
		
		return false;
	}
	
	static boolean updateUserDetails(String userName, String userEmail,String mobileNumber, String password) {
		
		return false;
	}
	
	static List<User> getCotomersDetails() {
		
		return null;
	}
	
	static boolean deleteCustomer(String userId) {
		
		return false;
	}
	
	static List<User> getOneCustomerDetails(String customerId){
		
		return null;
	}

}
