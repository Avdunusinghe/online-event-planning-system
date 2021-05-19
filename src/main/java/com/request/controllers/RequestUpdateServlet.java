package com.request.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.request.util.RequestDbUtil;

/**
 * Servlet implementation class RequestUpdateServlet
 */
@WebServlet("/RequestUpdateServlet")
public class RequestUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 PrintWriter pw = response.getWriter();
		 response.setContentType("text/html");
		// TODO Auto-generated method stub
		String requestId = request.getParameter("requestId");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String event = request.getParameter("event");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String description = request.getParameter("description");
		String venue = request.getParameter("venue");
		String address = request.getParameter("address");
		String capacity = request.getParameter("capacity");
		String attendance = request.getParameter("attendance");
		String pay = request.getParameter("pay");
		String budget = request.getParameter("budget");
		String tickets = request.getParameter("tickets");
  
		doGet(request, response);
		
		boolean isTrue;
		try {
		isTrue = RequestDbUtil.updateRequest(requestId, name,  email, phone, event, date, time, description, venue, address, capacity, attendance, pay, budget, tickets);
		
		if (isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("RequestList.jsp");
		   pw.println("<script type = 'text/javascript'>");
			pw.println("alert('Successfully Updated');");
			pw.println("</script>");
			 dis.forward(request, response);
		 }
		 else {
			 
			 
			 pw.println("<script type = 'text/javascript'>");
				pw.println("alert('No Request details');");
				pw.println("location = 'UpdateRequest.jsp'");
				pw.println("</script>");
		 }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
