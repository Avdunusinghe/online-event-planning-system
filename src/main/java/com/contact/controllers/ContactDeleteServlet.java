package com.contact.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.contact.util.ContactDbUtil;


@WebServlet("/ContactDeleteServlet")
public class ContactDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String messageId = request.getParameter("conId");
		
		boolean isdelete;
		
		isdelete = ContactDbUtil.deleteContact(messageId);
		
		if(isdelete == true) {
			RequestDispatcher disp = request.getRequestDispatcher("Success.jsp");
			disp.forward(request, response);
		}
		else {
			RequestDispatcher disp2 = request.getRequestDispatcher("UserAppHome.jsp");
			disp2.forward(request, response);
		}
	}
}