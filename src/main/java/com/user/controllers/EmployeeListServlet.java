///////////////////////////////////////
//				AUTHOR				 //
//			RANASINGHE TKSA          //  
//			  IT20042738			 //
///////////////////////////////////////

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
import com.user.util.EmployeeDbUtil;

/**
 * Servlet implementation class EmployeeListServlet
 */
@WebServlet("/EmployeeListServlet")
public class EmployeeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter EPW = response.getWriter();
		response.setContentType("text/html");
		
		try {
			List<User> employee = EmployeeDbUtil.getEmployeeDetails();
			request.setAttribute("employee_list", employee);
			
			if(employee != null) {
				
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeList.jsp");
				dispatcher.forward(request, response);
			}else {
				
				EPW.println("<script type = 'text/javascript'>");
				EPW.println("alert('Not Found Customer Details');");
				EPW.println("location = 'AdminLayout.jsp'");
				EPW.println("</script>");
			}
			
			
		}catch(Exception Ex) {
			Ex.printStackTrace();
		}
	}
}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
