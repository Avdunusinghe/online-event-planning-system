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
 * Servlet implementation class SponsorDeleteServlet
 */
@WebServlet("/SponsorDeleteServlet")
public class SponsorDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SponsorDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sponsorId = request.getParameter("sponsorId");
		try {
			
			SponsorDbUtil sponsorservice = new SponsorDbUtil();
			
			PrintWriter pw = response.getWriter();
			response.setContentType("text/html");
			//String dispatchPage;
			
			boolean	isDeleted = sponsorservice.deleteSponsor(sponsorId);
			
			if(isDeleted = true) {
				
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("GetSponssorDetailsServelet");
				dispatcher.forward(request, response);
			}
			else {
				
				pw.println("<script type = 'text/javascript'>");
				pw.println("alert('Delete operation Not Success');");
				pw.println("location = 'adminHome.jsp'");
				pw.println("</script>");
			}
		} catch (Exception ex) {
			
			ex.printStackTrace();
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
