package com.user.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.userservice.ICustomerService;
import com.user.util.UserDbUtil;

/**
 * Servlet implementation class CustomerDeactiveServlet
 */
@WebServlet("/CustomerDeactiveServlet")
public class CustomerDeactiveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerDeactiveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		String customerid = request.getParameter("userId");
		try {
			
			boolean isDeactive;
			ICustomerService adminDeactiveCustomer = new UserDbUtil();
			isDeactive = adminDeactiveCustomer.deactiveCustomer(customerid);
			
			if(isDeactive == true) {
				
				String deActivatedMsg = "Customer Deactivated!";
				request.setAttribute("deActivatedMsg", deActivatedMsg);
				RequestDispatcher dispatcher = request.getRequestDispatcher("UserListServlet");
				dispatcher.forward(request, response);
			}
			else {
				
				pw.println("<script type = 'text/javascript'>");
				pw.println("alert('operation Failed');");
				pw.println("location = 'UserListServlet'");
				pw.println("</script>");
				
			}
			
			
		}catch(Exception ex) {
			
			ex.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
