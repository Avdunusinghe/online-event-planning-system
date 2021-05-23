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
 * Servlet implementation class RequestDeleteServlet
 */
@WebServlet("/RequestDeleteServlet")
public class RequestDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
     String requestId = request.getParameter("requestId");
		

		try {
			PrintWriter pw = response.getWriter();
			response.setContentType("text/html");
		
        boolean isTrue;
		
		isTrue = RequestDbUtil.Requestdelete(requestId);
		
		if(isTrue == true) {
			
			
			RequestDispatcher disp = request.getRequestDispatcher("GetRequestListServlet");
			disp.forward(request, response);
		}
		else {
			
			pw.println("<script type = 'text/javascript'>");
			pw.println("alert('Could not deleted');");
			pw.println("location = 'UserAppHome.jsp'");
			pw.println("</script>");
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

		
	}
	}


