package com.practise;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Add extends HttpServlet{
	
	

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter pw=resp.getWriter();
		String b=req.getParameter("num1");
		String c=req.getParameter("num2");
		int a=Integer.parseInt(b);
		int d=Integer.parseInt(c);
		int sum=a+d;
		pw.println("sum of two numbers is "+sum);
		
		
	}
	
	

}
