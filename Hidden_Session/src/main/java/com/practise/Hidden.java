package com.practise;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hidden extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  PrintWriter out = resp.getWriter();  
          
	        String n=req.getParameter("userName");  
	        out.print("Welcome "+n);     
	        out.print("<form action='servlet2'>");  
	        out.print("<input type='hidden' name='uname' value='"+n+"'>");  
	        out.print("<input type='submit' value='go'>");  
	        out.print("</form>");  
	    
	}
}
