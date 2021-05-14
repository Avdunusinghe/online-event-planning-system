
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
			
			User user = UserDbUtil.validateLogin(email,password);
			String dispatchPage;
			
			if(user != null) {
				
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				
				
				if(user.getType() == 2 || user.getType() == 3 ) {
					
					dispatchPage = "AdminLayout.jsp";
					
					HttpSession session1 = request.getSession();
					session1.setAttribute("user_tracking", user);
					
					RequestDispatcher dispatcher = request.getRequestDispatcher(dispatchPage);
					dispatcher.forward(request, response);
					
				}
				else {
					
					dispatchPage ="UserAppHome.jsp";
					
					HttpSession session2 = request.getSession();
					session2.setAttribute("user_tracking", user);
					
					RequestDispatcher dispatcher = request.getRequestDispatcher(dispatchPage);
					dispatcher.forward(request, response);
				}
				
				
			}
			else {
				
				
				request.setAttribute("loginError", "User or password incorrect!");
				/*pw.println("<script type = 'text/javascript'>");
				//pw.println("alert('Your username or password is Incorfdf');");
				//pw.println("toastr.warning('Email or Password Incoreect');");
				pw.println("<meta http-equiv='refresh' content='3;URL=login.jsp'>");//redirects after 3 seconds
				pw.println("<p style='color:red;'>User or password incorrect!</p>");
				//pw.println("location = 'login.jsp'");
				pw.println("</script>");*/
				 
			}
		} catch(Exception ex){
			
			ex.printStackTrace();
		}
		
	}

}
