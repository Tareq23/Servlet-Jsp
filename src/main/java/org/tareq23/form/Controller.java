package org.tareq23.form;

import java.io.IOException;
import java.io.PrintWriter;

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

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("Name\t: "+request.getParameter("full-name"));
		out.println("Gender\t: "+request.getParameter("gender"));
		out.println("Country\t:"+request.getParameter("country"));
		String[] languages = request.getParameterValues("language");
		
		out.print("Language Knows : ");
		if(languages != null)
		{
			out.print("<br/>");
			for(int i=0; i<languages.length; i++)
			{
				out.println(languages[i]);
			}
		}
		else {
			out.println("None Select");
		}
	}

}
