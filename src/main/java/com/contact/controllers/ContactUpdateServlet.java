package com.contact.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.contact.util.ContactDbUtil;

@WebServlet("/ContactUpdateServlet")
public class ContactUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ContactUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String subject = request.getParameter("message");
		String message = request.getParameter("subject");

		boolean isupdate;
		
		isupdate = ContactDbUtil.updateContact(subject, message, null);
		
		if (isupdate == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
			 dis.forward(request, response);
		 }
		 else {
			 
			 RequestDispatcher dis = request.getRequestDispatcher("UserAppHome.jsp");  
			 dis.forward(request, response);
		 }
	}
}
