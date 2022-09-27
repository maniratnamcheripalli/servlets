package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/go")
public class Service extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter pw = resp.getWriter();
	
		String i=req.getParameter("name");
		pw.println("Name is "+i);
		RequestDispatcher rd=req.getRequestDispatcher("sys");
		rd.forward(req, resp);
//		resp.sendRedirect("sys");
	}
}
