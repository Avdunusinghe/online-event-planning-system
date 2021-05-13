package com.user.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.User;
import com.user.util.UserDbUtil;

/**
 * Servlet implementation class GetUserDetailsServlet
 */
@WebServlet("/GetUserDetailsServlet")
public class GetUserDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GetUserDetailsServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		 /*List<User> 
		 User userDetails = UserDbUtil.getUserDetails(int userId);*/
	}

}
