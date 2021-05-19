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
 * Servlet implementation class GetDeactiveUserDetailsServlet
 */
@WebServlet("/GetDeactiveUserDetailsServlet")
public class GetDeactiveUserDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public GetDeactiveUserDetailsServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		String dispatchPage;
		
		try {
			
			ICustomerService deactiveCustomerDetails = new UserDbUtil();
			List<User> deactiveCustomers = deactiveCustomerDetails.getDeactiveCustomers();
			
			request.setAttribute("deactive_list", deactiveCustomers);
			
			if(deactiveCustomers != null) {
				
				dispatchPage = "deactiveUserList.jsp";
				
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
