package com.request.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.request.model.Request;
import com.request.util.RequestDbUtil;

/**
 * Servlet implementation class GetAcceptedListServlet
 */
@WebServlet("/GetAcceptedListServlet")
public class GetAcceptedListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAcceptedListServlet() {
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
		// TODO Auto-generated method stub
		doGet(request, response);

		PrintWriter EW = response.getWriter();
		response.setContentType("text/html");
		
		try {
			List<Request> requests = RequestDbUtil.getAcceptedRequestList();
			request.setAttribute("Request", requests);
			
			if(request != null) {
				
				
				RequestDispatcher dis = request.getRequestDispatcher("AcceptedList.jsp");
				 dis.forward(request, response);
			}
		 
			
		}
		catch(Exception Ex) {
			Ex.printStackTrace();
		}
	}

}
