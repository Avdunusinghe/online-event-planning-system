package com.sponsors.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sponsors.util.SponsorDbUtil;



/**
 * Servlet implementation class UpdateSponsorServlet
 */
@WebServlet("/UpdateSponsorServlet")
public class UpdateSponsorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSponsorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String sponsorId = request.getParameter("sponsorId");
		String name  = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		
		
		boolean updateTrue;
		
		
		try {
			
			SponsorDbUtil sponsorservice = new SponsorDbUtil();
			
			updateTrue = sponsorservice.updateSponsor(sponsorId, name,email, address, phone);
			
			if (updateTrue == true) {
				
				RequestDispatcher dispatcher =  request.getRequestDispatcher("GetSponssorDetailsServelet");
				dispatcher.forward(request, response);
			}
			
		}catch(Exception e) {
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
