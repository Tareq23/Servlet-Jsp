package org.tareq23.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.tareq23.entity.User;
import org.tareq23.model.UsersModel;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name="jdbc/project")
	private DataSource dataSource;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();
		
		switch(page)
		{
		case "home" : 
			homePage(request,response);
			break;
		case "list-user":
				listUser(request,response);
			break;
		case "add-user":
				addUser(request,response);
			break;
		default : 
			errorPage(request,response);
			break;
		}
	}
	
	
	public void homePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setAttribute("title", "Home");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	public void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<User> userList = new ArrayList<>();
		userList = new UsersModel().listUser(dataSource);
		request.setAttribute("listUser", userList);
		request.setAttribute("title","User List");
		request.getRequestDispatcher("list-user.jsp").forward(request, response);
	}
	public void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.getRequestDispatcher("addUser.jsp").forward(request, response);
	}
	
	public void errorPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setAttribute("title", "Error Page");
		request.getRequestDispatcher("error.jsp").forward(request, response);
	}
	
	
}
