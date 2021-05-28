package com.sponsors.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sponsors.util.SponsorDbUtil;




/**
 * Servlet implementation class SponsorInserServlet
 */
@WebServlet("/SponsorInserServlet")
public class SponsorInserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SponsorInserServlet() {
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
		
		PrintWriter print = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		

		
		
		boolean isInsertTrue;
		try {
			
			SponsorDbUtil sponsorservice = new SponsorDbUtil();
			
			isInsertTrue = sponsorservice.insertSponsor(name, email, address, phone);
			
			if(isInsertTrue == true) {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("sponsorAdd.jsp");
				dispatcher.forward(request, response);
			}
			else {
				
				print.println("<script type = 'text/javascript'>");
				print.println("alert('cannot add ');");
				print.println("location = 'sponsorAdd.jsp'");
				print.println("</script>");
			}
		}catch(Exception ex) {
			
			ex.printStackTrace();
		}
	}

}
