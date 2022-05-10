package org.tareq23.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class SiteController
 */
@WebServlet("/siteController")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public SiteController() {
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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		if(username.equals("tareq23")&&password.equals("123456"))
		{
			//Invalidate session if any
			request.getSession().invalidate();
			
			HttpSession newSession = request.getSession(true);
			
			newSession.setMaxInactiveInterval(200);
			response.sendRedirect("numberArea.jsp");
		}
		else {
			response.sendRedirect("login.jsp");
		}
		
		
//		PrintWriter out = response.getWriter();
//		out.print("<p>"+username+"</p>");
//		out.print("<p>"+password+"</p>");
//		
//		out.close();
		
	}

}
