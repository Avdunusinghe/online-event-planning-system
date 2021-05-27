package com.user.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.userservice.ICustomerService;
import com.user.util.UserDbUtil;

/**
 * Servlet implementation class UserUpdateServlet
 */
@WebServlet("/UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UserUpdateServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 PrintWriter pw = response.getWriter();
		 response.setContentType("text/html"); 
		 
		 String userId = request.getParameter("userId");
		 String userName = request.getParameter("name");
		 String userEmail = request.getParameter("email");
		 String mobileNumber = request.getParameter("phone");
		 String password = request.getParameter("password");
		 
		 String dispatchPage;
		 boolean updateTrue;
		try {
			
			ICustomerService customerDetailsUpdateService = new UserDbUtil();
			updateTrue = customerDetailsUpdateService.updateUserDetails(userId, userName, userEmail, mobileNumber, password);
			 
			 if(updateTrue == true) {
				 
				 dispatchPage = "UserProfileDetailsServlet";
				 
				 String updateProfile = "Profile Updated";
				 request.setAttribute("updateDetails", updateProfile);
				 
				 RequestDispatcher dispatcher = request.getRequestDispatcher(dispatchPage);
				 dispatcher.forward(request, response);
			 }
			 else {
				 
				    pw.println("<script type = 'text/javascript'>");
					pw.println("alert('operation failed');");
					//pw.println("toastr.warning('Email or Password Incoreect');");
					pw.println("location = 'updateUser.jsp'");
					pw.println("</script>");
			 }
		}catch(Exception ex) {
			
			ex.printStackTrace();
		}
		 
		 
		 
	}

}
