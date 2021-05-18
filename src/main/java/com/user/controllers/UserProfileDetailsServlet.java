package com.user.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.User;
import com.user.userservice.ICustomerService;
import com.user.util.UserDbUtil;

/**
 * Servlet implementation class UserProfileDetailsServlet
 */
@WebServlet("/UserProfileDetailsServlet")
public class UserProfileDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UserProfileDetailsServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		String userId = request.getParameter("userId");
		String dispatchPage;
		
		try {
			
			ICustomerService customerDetailsRetrieveService = new UserDbUtil();
			List<User> uniqueCustomerDetails = customerDetailsRetrieveService.getOneCustomerDetails(userId);
			
			request.setAttribute("customer_detail", uniqueCustomerDetails);
			
			if(uniqueCustomerDetails != null) {
				
				dispatchPage = "uniqeUserDetails.jsp";
				
				RequestDispatcher dispatcher = request.getRequestDispatcher(dispatchPage);
				dispatcher.forward(request, response);
			}
			else {
				
				pw.println("<script type = 'text/javascript'>");
				pw.println("alert('Not Found Customer Details');");
				pw.println("location = 'AdminLayout.jsp'");
				pw.println("</script>");
			}
		}catch(Exception ex) {
			
			ex.printStackTrace();
		}
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
