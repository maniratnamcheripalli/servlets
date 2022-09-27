package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class First extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter pw=resp.getWriter();
		ServletConfig sc=getServletConfig();
		String st=sc.getInitParameter("Mani");
//		Enumeration<String> names=sc.getInitParameterNames();
		String name=sc.getServletName();
		pw.println("parameter value of mani is "+st);
		pw.println(name);	
	}
}
