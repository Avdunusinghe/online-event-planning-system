package com.user.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.user.model.User;
import com.user.util.EmployeeDbUtil;

/**
 * Servlet implementation class EmployeeUpdateServlet
 */
@WebServlet("/EmployeeUpdateServlet")
public class EmployeeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public EmployeeUpdateServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name  = request.getParameter("name");
		String email = request.getParameter("email");
		String contactNumber = request.getParameter("contactno");
		String type = (String)request.getParameter("person");
		String password = request.getParameter("password");
		//String  type = request.getParameter("<%= i%>");
		
		String dispatchPage;
		boolean updateTrue;
		
		try {
			updateTrue = EmployeeDbUtil.updateEmployee(name, email, contactNumber, type, password);
			
			if (updateTrue == true) {
				
				dispatchPage = "EmployeeList.jsp";
				RequestDispatcher dispatcher =  request.getRequestDispatcher(dispatchPage);
				dispatcher.forward(request, response);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
