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
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		// TODO Auto-generated method stub
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String messageId = request.getParameter("messageid");
		String name = request.getParameter("name");
		String email  = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		boolean isupdate;
		
		try {
			
			ContactDbUtil contactservice = new ContactDbUtil();
			
			isupdate = contactservice.updateContact(messageId, name, email, subject, message);
		
			if (isupdate == true)
			{
				RequestDispatcher dis = request.getRequestDispatcher("ContactListServlet");
				dis.forward(request, response);
			}
			else {
			 
				RequestDispatcher dis = request.getRequestDispatcher("adminHome.jsp");  
				dis.forward(request, response);
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}