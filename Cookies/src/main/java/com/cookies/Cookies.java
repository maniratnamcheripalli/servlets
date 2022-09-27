 package com.cookies;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Cookies extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter pw=resp.getWriter();
		
		String a=req.getParameter("username");
		pw.println(a);
		
		Cookie ck=new Cookie("username",a);
		
		resp.addCookie(ck);
		
		RequestDispatcher rd=req.getRequestDispatcher("servlet2");
		rd.forward(req, resp);
		
	}

}
