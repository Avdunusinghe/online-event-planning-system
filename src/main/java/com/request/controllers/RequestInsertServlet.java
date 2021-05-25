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
 * Servlet implementation class RequestInsertServlet
 */
@WebServlet("/RequestInsertServlet")
public class RequestInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath()); 
		
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 PrintWriter display = response.getWriter();
			response.getWriter();
			
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String event = request.getParameter("event");
			String date = request.getParameter("date");
			String time = request.getParameter("time");
			String venue = request.getParameter("venue");
			String address = request.getParameter("address");
			String attendance = request.getParameter("attendance");
			String pay = request.getParameter("pay");
			String budget = request.getParameter("budget");
			String tickets = request.getParameter("tickets");
			
			
			//check whether inserted
					boolean isInsert;
					
				try {	
					isInsert = RequestDbUtil.addRequest(name, email, phone, event, date, time,  venue, address,  attendance, 
														pay , budget, tickets );
					
					
					if (isInsert == true) {
						
						//if query execute success dispatch to EventRequest page
						
						RequestDispatcher res = request.getRequestDispatcher("GetRequestDetailsServlet");
						res.forward(request, response);
					}
					else {
						
						// if not success dispatch to Request page
						 
						RequestDispatcher res = request.getRequestDispatcher("Requests.jsp");
						display.println("<script type = 'text/javascript'>");
						display.println("alert('Error');");
						display.println("</script>");
						res.forward(request, response);
						
					}
				}catch(Exception e) {
					e.printStackTrace();
				}
		
		
		
		
}	}
		
		
	