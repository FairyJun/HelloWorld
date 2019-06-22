package com.jkxy.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jkxy.model.UserTable;
import com.jkxy.service.userservice;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response)  {
			doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		UserTable user=new UserTable();
		user.setUsername(username);
		user.setPassword(password);
		try {
		if(new userservice().valiUser(user))
		{
			response.sendRedirect("../main.jsp");
		}
		else
			response.sendRedirect("../Index.jsp");
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}

}
