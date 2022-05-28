package org.tareq23.controller;

import java.io.IOException;
import java.time.LocalTime;
import java.util.Collection;

import org.tareq23.hibernate.DAO.FileDAO;
import org.tareq23.hibernate.entity.Files;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

/**
 * Servlet implementation class ImageUpload
 */

@MultipartConfig
@WebServlet("/image-upload")
public class ImageUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());
		
		String path = "E:/java/java-servlet/servletpractice/uploaded-files/";
		
		try {
			 final Collection<Part> parts = request.getParts();
			    for (final Part part : parts) {
//			       part.write("E:/java/java-servlet/servletpractice/uploaded-files/"+part.getName());
			    
			       String fileName = part.getSubmittedFileName();
			       String name = part.getName()+"-";
			       String milliseconds = String.valueOf(System.currentTimeMillis());
			       Thread.sleep(5);
			       part.write(path+
			    		   name+milliseconds+"."+fileName.substring(fileName.lastIndexOf(".")+1));
			       new FileDAO().addFileDetails(new Files(name+milliseconds+"."+fileName.substring(fileName.lastIndexOf(".")+1)));
			       
			    }
			    response.getWriter().print("The file has been uploaded successfully.");
		}
		catch(Exception e)
		{
			response.getWriter().print("Something went to wrong!!");
		}
	}

}
