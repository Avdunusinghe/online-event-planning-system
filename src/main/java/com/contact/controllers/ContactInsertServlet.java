package com.contact.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.contact.util.ContactDbUtil;


@WebServlet("/ContactInsertServlet")
public class ContactInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ContactInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		doGet(request, response);
		
		
		//check whether inserted
		boolean isInsert;
		
		
		isInsert = ContactDbUtil.insertContact(name, email, subject, message);
		
		
		if (isInsert == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("UserAppHome.jsp");
			dis2.forward(request, response);
		}
	}
}
