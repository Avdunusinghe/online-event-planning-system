package com.contact.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.contact.contactservice.ContactService;
import com.contact.model.Contact;
import com.contact.util.ContactDbUtil;

/**
 * Servlet implementation class ContactListServlet
 */
@WebServlet("/ContactListServlet")
public class ContactListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		try {
			
			ContactDbUtil contactservice = new ContactDbUtil();
			
			List<Contact> contact = contactservice.getContactDetails();
			
			request.setAttribute("contact", contact);
			
			if(contact != null) {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("contactlist.jsp");
				dispatcher.forward(request, response);
			}
			else {
				
				pw.println("<script type = 'text/javascript'>");
				pw.println("alert('Not Found contact Details');");
				pw.println("location = 'AdminLayout.jsp'");
				pw.println("</script>");
			}
			
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}