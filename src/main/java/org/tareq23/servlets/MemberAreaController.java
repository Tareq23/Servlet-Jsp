package org.tareq23.servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberAreaController
 */
@WebServlet("/member-area")
public class MemberAreaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public MemberAreaController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		
		switch(action)
		{
		case "destroy":
			
			request.getSession().invalidate();//it's good enough 
			
//			Cookie[] cookies = request.getCookies();
//			
//			for(Cookie cookie : cookies)
//			{
//				if(cookie.getName().equals("username"))
//				{
//					cookie.setValue(null);
//					cookie.setMaxAge(0);
//					response.addCookie(cookie);
//				}
//			}
			
//			response.sendRedirect("login.jsp");
			response.sendRedirect(request.getContextPath()+"/home?action=login");
			
			break;
		case "member-area":
			request.getRequestDispatcher("memberArea.jsp").forward(request, response);
			break;
		case "member-only":
			request.getRequestDispatcher("memberOnly.jsp").forward(request, response);
			break;
		default :
			break;
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
