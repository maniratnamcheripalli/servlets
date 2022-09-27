package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.Provider.Service;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter pw=resp.getWriter();
		String email=req.getParameter("em");
		String password=req.getParameter("pass");
		Cookie ck=new Cookie("em",email);
		Cookie pa=new Cookie("pass",password);
		resp.addCookie(ck);
		resp.addCookie(pa);	
		resp.sendRedirect("Profile");
		
		
	}
}
