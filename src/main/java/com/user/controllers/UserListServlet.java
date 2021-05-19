package com.user.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.User;
import com.user.userservice.ICustomerService;
import com.user.util.UserDbUtil;

/**
 * Servlet implementation class UserListServlet
 */
/*
 * Author Dunusinghe.A.V IT20025526
 */
@WebServlet("/UserListServlet")
public class UserListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserListServlet() {
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
		String dispatchPage;
		try {
			
			ICustomerService adminCustomerRetrieveService = new UserDbUtil();
			List<User> customers = adminCustomerRetrieveService.getCotomersDetails();
			
			request.setAttribute("customers_list", customers);
			
			if(customers != null) {
				
				dispatchPage = "userList.jsp";
				
				RequestDispatcher dispatcher = request.getRequestDispatcher(dispatchPage);
				dispatcher.forward(request, response);
			}
			else {
				
				pw.println("<script type = 'text/javascript'>");
				pw.println("alert('Not Found Customer Details');");
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
