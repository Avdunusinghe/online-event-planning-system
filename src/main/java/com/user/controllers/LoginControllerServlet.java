
package com.user.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.model.User;
import com.user.userservice.ICustomerService;
import com.user.util.UserDbUtil;


@WebServlet("/LoginControllerServlet")
public class LoginControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		//User user = new User();
		
		try {
			
			ICustomerService customerService = new UserDbUtil();
			User user = customerService.validateLogin(email, password);
			String dispatchPage;
			
			if(user != null) {
				
				/*HttpSession session = request.getSession();
				session.setAttribute("user_tracking", user);*/
				
				
				if(user.getType() == 2 || user.getType() == 3 || 
				   user.getType() == 4 )  {
					
					dispatchPage = "adminHome.jsp";
					
					String logingSuccess = "Logging Success!";
	                request.setAttribute("loginMsg", logingSuccess); 
					
					HttpSession session = request.getSession();
					session.setAttribute("user", user);
					
					RequestDispatcher dispatcher = request.getRequestDispatcher(dispatchPage);
					dispatcher.forward(request, response);
					
				}
				else {
					
					dispatchPage ="UserAppHome.jsp";
					
					String logingSuccess = "Logging Success!";
	                request.setAttribute("loginMsg", logingSuccess); 
					
					HttpSession session = request.getSession();
					session.setAttribute("user", user);
					
					RequestDispatcher dispatcher = request.getRequestDispatcher(dispatchPage);
					dispatcher.forward(request, response);
				}
				
				
			}
			else {
				
			
				String message = "Invalid email or password";
                request.setAttribute("message", message);
				
                RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
				 
			}
		} catch(Exception ex){
			
			ex.printStackTrace();
		}
		
	}

}
