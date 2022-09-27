package com.forEach;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Load extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter pw = resp.getWriter();
		pw.println("Mani");
		
		List<Student> li = Arrays.asList(new Student(1, "mani"), new Student(2, "rajesh"), new Student(3, "pavan"));
		req.setAttribute("students", li);
		
		RequestDispatcher rd=req.getRequestDispatcher("forEach.jsp");
		rd.forward(req, resp);
		
		
		
		
	}
}
