///////////////////////////////////////
//				AUTHOR				 //
//			RANASINGHE TKSA          //  
//			  IT20042738			 //
///////////////////////////////////////

package com.user.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.util.EmployeeDbUtil;


/**
 * Servlet implementation class EmployeeDeleteServlet
 */
@WebServlet("/EmployeeDeleteServlet")
public class EmployeeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		String userId = request.getParameter("userId");
		
		try {
			
			PrintWriter Ex = response.getWriter();
			response.setContentType("text/html");
			//String dispatcherPage;
		
			boolean isDeleted = EmployeeDbUtil.deleteEmployee(userId);
			if(isDeleted = true) {
				
				//dispatcher = "EmployeeListServlet";
				RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeListServlet");
				dispatcher.forward(request, response);
				
			}else {
				
				Ex.println("<script type = 'text/javascript'>");
				Ex.println("alert('Delete operation Not Success');");
				Ex.println("location = 'userList.jsp'");
				Ex.println("</script>");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
