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

/**
 * Servlet implementation class UserController
 */
@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Resource(name="jdbc/project")
	private DataSource dataSource;

    /**
     * Default constructor. 
     */
    public UserController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String form = request.getParameter("form");
		
		switch(form)
		{
		case "add-user":
				addUser(request,response);
			break;
		case "update-user":
			updateUser(request,response);
			break;
		default : 
				HomeController.errorPage(request, response);
			break;
		}
	}
	
	public void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User updateUser = new User(Integer.parseInt(request.getParameter("userId")),
				request.getParameter("username"),request.getParameter("email"));
		
		new UsersModel().updateUser(dataSource,updateUser);
		listUser(request,response);
		
	}

	public void addUser(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		User user = new User(request.getParameter("username"),request.getParameter("email"));
		
		boolean rs = new UsersModel().addUser(dataSource,user);
		
//		System.out.println(rs);
		if(rs) {
			response.sendRedirect(request.getContextPath()+"/home?page=list-user");
		}
		else {
			response.sendRedirect(request.getContextPath()+"/home?page=add-user");
		}
		
	}

	public void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<User> userList = new ArrayList<>();
		userList = new UsersModel().listUser(dataSource);
		request.setAttribute("listUser", userList);
		request.setAttribute("title","User List");
		request.getRequestDispatcher("list-user.jsp").forward(request, response);
	}

}
