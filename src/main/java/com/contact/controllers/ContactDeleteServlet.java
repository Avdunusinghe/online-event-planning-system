package com.contact.controllers;

import java.io.IOException;
import java.io.PrintWriter;

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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String messageId = request.getParameter("messageId");
		
		try {
			ContactDbUtil contactservice = new ContactDbUtil();
			
			PrintWriter Ex = response.getWriter();
			response.setContentType("text/html");
		
			boolean isdelete;
		
			isdelete = contactservice.deleteContact(messageId);
		
			if(isdelete == true) {
				RequestDispatcher disp = request.getRequestDispatcher("ContactListServlet");
				disp.forward(request, response);
			}
			else {
				Ex.println("<script type = 'text/javascript'>");
				Ex.println("alert('Delete operation Not Success');");
				Ex.println("location = 'contactList.jsp'");
				Ex.println("</script>");
			}
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}
	
}