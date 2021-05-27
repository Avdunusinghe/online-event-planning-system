package com.user.userservice;



import java.util.List;

import com.user.model.User;

public interface ICustomerService {
	
      public User validateLogin(String email, String password);
	
      public boolean addUser(String name, String email, String phone, String password);
		
      public boolean updateUserDetails(String userId,String userName, String userEmail,String mobileNumber, String password);
		
      public List<User> getCotomersDetails();

      public boolean deleteCustomer(String userId);
		
      public List<User> getOneCustomerDetails(String customerId);
      
      public boolean deactiveCustomer(String customerId);
      
      public List<User> getDeactiveCustomers(); 
      
      public boolean reActiveCustomer(String userId);
      
      public int validateEmail(String email);
		
	

}
