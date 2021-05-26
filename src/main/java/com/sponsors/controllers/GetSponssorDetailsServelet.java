package com.sponsors.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sponsors.model.Sponsor;
import com.sponsors.util.SponsorDbUtil;
/**
 * Servlet implementation class GetSponssorDetailsServelet
 */
@WebServlet("/GetSponssorDetailsServelet")
public class GetSponssorDetailsServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSponssorDetailsServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		try {
			
			List<Sponsor> sponsors = SponsorDbUtil.getSponsors();
			
			request.setAttribute("sponsor_list", sponsors );
			
			if(sponsors != null) {
				
		
				RequestDispatcher dispatcher = request.getRequestDispatcher("sponsorList.jsp");
				dispatcher.forward(request, response);
			}
			else {
				
				pw.println("<script type = 'text/javascript'>");
				pw.println("alert('Not Found Customer Details');");
				pw.println("location = ''");
				pw.println("</script>");
			}
			
		}catch(Exception ex) {
			
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
