package com.user.userservice;
import java.sql.SQLException;
import java.util.List;
import com.user.model.User;

public interface EmployeeService {
	
	public boolean insertEmployeeDetails(String name, String email, String contactNumber, String password, String isActive,String type);
	public boolean updateEmployee(String userId, String name, String email, String contactNumber, String password);
	public List<User> getEmployeeDetails();
	public boolean deleteEmployee(String userID) throws SQLException;
}
