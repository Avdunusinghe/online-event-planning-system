package com.user.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.util.EmployeeDbUtil;


/**
 * Servlet implementation class EmployeeIsnertServlet
 */
@WebServlet("/EmployeeIsnertServlet")
public class EmployeeIsnertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeIsnertServlet() {
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
					
		String name  = request.getParameter("name");
		String email = request.getParameter("email");
		String contactNumber = request.getParameter("contactno");
		String password = request.getParameter("password");
		String type = (String)request.getParameter("person");
		//String  type = request.getParameter("<%= i%>");
		
		PrintWriter display = response.getWriter();
		response.getWriter();
		
		boolean isdone ;
		isdone =  EmployeeDbUtil.insertEmployeeDetails(name, email, contactNumber, password, type);
		
		
			
			if(isdone == true) {
				
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeList.jsp");
				dispatcher.forward(request, response);	
			}
		
			else {
				
				display.println("<script type = 'text/javascript'>");
				display.println("alert('Gotabaya fail');");
				display.println("location = Employee.jsp");
				display.println("</script>");
				
				
			}
			
			} 
}
			
	


