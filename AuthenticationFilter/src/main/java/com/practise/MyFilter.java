package com.practise;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class MyFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		PrintWriter pw=response.getWriter();
		String p=request.getParameter("password");
		
		if(p.equals("mani")) {
			chain.doFilter(request, response);
		}
		else {
			pw.println("Incorrect password or username");
			
		}
		
	}

}
