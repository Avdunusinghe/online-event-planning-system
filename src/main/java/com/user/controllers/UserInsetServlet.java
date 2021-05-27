 package com.user.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mailservice.SendMail;
import com.user.userservice.ICustomerService;
import com.user.util.UserDbUtil;

/**
 * Servlet implementation class UserInsetServlet
 */
@WebServlet("/UserInsetServlet")
public class UserInsetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		

		/*
		 * Sending Message
		 */
		//String mailTo = email;
		String subject = "Registration Confirmation";
		String message = "<i>Thank you!!</i> ";
		message +="<br>";
		
		message += "<font color=orange>Thank you join With us </font>";
		message +="<br>";
		message += "<font color=orange>The eventer </font>";
		message +="<br>";
		message += "<font color=red>*Please Don't Reply this email*</font>";
		message +="<br>";
		message+= "<font color=red>This is Auto Genarated Email</b>";
		/*message +="<br>";
		message += "<font color=orange>Sri Lanka Institute of Information Technology(SLIIT)</font>";
		message +="<br>";
		message += "<font color=purple>Department of Computer Science & Software Engineering</font>";
		message +="<br>";
		message += "<font color=red>GROUP:- MLB_SE_OOP_G259</font>";
		message +="<br>";
		message +="<br>";
		message += "<font color=red>*Please Don't Reply this email*</font>";
		message +="<br>";
		message+= "<font color=red>This is Auto Genarated Email</b>";	*/	
		boolean isInsertTrue;
		int isEmailAlreadyExists;
		try {
			
			ICustomerService checkEmailService = new UserDbUtil();
			isEmailAlreadyExists = checkEmailService.validateEmail(email);
			
			if(isEmailAlreadyExists == 1) {
				
				String emailExistsMsg = "This email address is already being exsits!";
                request.setAttribute("emailMsg", emailExistsMsg); 
                
                RequestDispatcher dispatcher = request.getRequestDispatcher("clientRegister.jsp");
				dispatcher.forward(request, response);
			}
			else {
				
				ICustomerService customerService = new UserDbUtil();
				isInsertTrue = customerService.addUser(name, email, phone, password);
				
				/*
				 *  check query execute Success
				 */
				
				if(isInsertTrue == true) {
					
					/*
					 * fire email
					 */
					SendMail.sendMailRegisteredCustomer(email, subject, message);
					
					/*
					 * if query execute success dispatch to home page
					 */
					String resgisterSuccess = "Registration Success!";
	                request.setAttribute("regSuccess", resgisterSuccess); 
					RequestDispatcher dispatcher = request.getRequestDispatcher("UserAppHome.jsp");
					dispatcher.forward(request, response);
				}
				else {
					/*
					 * if query execute not success dispatch to registerpage
					 */
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("clientRegister.jsp");
					dispatcher.forward(request, response);
				}
			}
				
			
			
		}catch(Exception ex) {
			
			ex.printStackTrace();
		}
		
	}

}
