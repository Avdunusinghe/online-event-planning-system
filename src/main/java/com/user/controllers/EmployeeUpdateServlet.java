///////////////////////////////////////
//				AUTHOR				 //
//			RANASINGHE TKSA          //  
//			  IT20042738			 //
///////////////////////////////////////
package com.user.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.user.model.User;
import com.user.userservice.EmployeeService;
import com.user.util.EmployeeDbUtil;
import java.util.List;

/**
 * Servlet implementation class EmployeeUpdateServlet
 */
@WebServlet("/EmployeeUpdateServlet")
public class EmployeeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public EmployeeUpdateServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		
		String userId = request.getParameter("userId");
		String name  = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		//String type = (String)request.getParameter("person");
		String password = request.getParameter("password");
		
		boolean updateTrue;
		
		
		try {
			//List<User> empDetail = EmployeeDbUtil.getEmployeeDetails();
			//request.setAttribute(userId, empDetail);
			//updateTrue = EmployeeDbUtil.updateEmployee(name, email, phone, password);
			EmployeeService employeeservice = new EmployeeDbUtil();
			updateTrue = employeeservice.updateEmployee(userId,name, email, phone, password);
			
			if (updateTrue == true) {
				
				RequestDispatcher dispatcher =  request.getRequestDispatcher("EmployeeListServlet");
				dispatcher.forward(request, response);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
