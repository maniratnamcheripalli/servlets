package com.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Profile extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	PrintWriter pw=resp.getWriter();
	Cookie []a=req.getCookies();
	
	
	if(a.length==0) {
		resp.sendRedirect("Login.html");
	}
	else {
		pw.println("<h4>Hello User</h4> ");
		pw.println("<h4>"+a[0].getValue()+"</h4>");
		pw.println("<h4>"+a[1].getValue()+"</h4>");
		pw.println("<a href='logout'>Logout</a>");
	}
}
}
