package org.tareq23.mvc;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Controller() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String param = request.getParameter("page");
		//System.out.println(param);
		if(param.equals("login"))
		{
			getServletContext().getRequestDispatcher("/mvc/login.jsp").forward(request, response);
		}
		else if(param.equals("sign-up"))
		{
			getServletContext()
			.getRequestDispatcher("/mvc/singUp.jsp").forward(request, response);
		}
		else if(param.equals("about"))
		{
			getServletContext().getRequestDispatcher("/mvc/about.jsp")
			.forward(request, response);
		}
		else {
			getServletContext().getRequestDispatcher("/mvc/notFound.jsp")
					.forward(request, response);
		}
		
		
	}



}
