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
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String requestId = request.getParameter("requestId");
		boolean isTrue;
		try {
		isTrue = RequestDbUtil.updateAcceptedRequest(requestId);
		
		if (isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("GetAcceptedListServlet");
			 dis.forward(request, response);
		 }
		}
		catch(Exception e) {
			e.printStackTrace();
		}	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
