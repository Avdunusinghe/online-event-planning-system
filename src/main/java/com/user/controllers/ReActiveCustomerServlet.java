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
 * Servlet implementation class ReActiveCustomerServlet
 */
@WebServlet("/ReActiveCustomerServlet")
public class ReActiveCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ReActiveCustomerServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		String customerid = request.getParameter("userId");
		try {
			
			boolean isAcctive;
			ICustomerService activeAccount = new UserDbUtil();
			isAcctive = activeAccount.reActiveCustomer(customerid);
			
			if(isAcctive == true) {
				
				String reactiveMsg = "Customer Activated";
				request.setAttribute("activeMsg", reactiveMsg);
				RequestDispatcher dispatcher = request.getRequestDispatcher("GetDeactiveUserDetailsServlet");
				dispatcher.forward(request, response);
			}
			else {
				
				pw.println("<script type = 'text/javascript'>");
				pw.println("alert('operation Failed');");
				pw.println("location = 'UserListServlet'");
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
