package com.mvc;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class Server extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Login login=new Login();
		PrintWriter out=resp.getWriter();
		String name=req.getParameter("name");
		String password=req.getParameter("password");
		
		login.setName(name);
		login.setPassword(password);
		
		req.setAttribute("name", name);
		
		boolean obj=login.verify();
		out.println(obj);
		
		if(obj) {
			RequestDispatcher rd=req.getRequestDispatcher("open.jsp");
			rd.forward(req, resp);
		}
		else {
			RequestDispatcher rd=req.getRequestDispatcher("close.jsp");
			rd.forward(req, resp);
		}
		
		
		
	}
}
