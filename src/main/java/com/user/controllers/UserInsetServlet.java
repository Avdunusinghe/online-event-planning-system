 package com.user.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
		boolean isInsertTrue;
		isInsertTrue = UserDbUtil.addUser(name, email, phone, password);
		
		/*
		 *  check query execute Success
		 */
		
		if(isInsertTrue == true) {
			
			/*
			 * if query execute success dispatch to home page
			 */
			RequestDispatcher dispatcher = request.getRequestDispatcher("UserAppHome.jsp");
			dispatcher.forward(request, response);
		}
		else {
			/*
			 * if query execute not success dispatch to registerpage
			 */
			
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("clientRegister.jsp");
			dispatcher2.forward(request, response);
		}
	}

}
