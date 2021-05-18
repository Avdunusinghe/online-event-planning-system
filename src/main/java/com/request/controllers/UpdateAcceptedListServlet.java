package com.request.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.request.util.RequestDbUtil;

/**
 * Servlet implementation class UpdateAcceptedListServlet
 */
@WebServlet("/UpdateAcceptedListServlet")
public class UpdateAcceptedListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAcceptedListServlet() {
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
	 * @param String 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response, Object String) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		String status = request.getParameter("status");
	
		
  
		doGet(request, response);
		
		boolean isTrue;
		isTrue = RequestDbUtil.updateAcceptedRequest(String request
				id);
		
		if (isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("RequestList.jsp");
			pw.println("alert('Successfully Updated');");
			 dis.forward(request, response);
		 }
		 else {
			 
			 RequestDispatcher dis = request.getRequestDispatcher("UpdateRequest.jsp"); 
			 pw.println("alert('The update is unsucessfull');");
			 dis.forward(request, response);
		 }
	}

}
