package com.practise;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forEach.Student;

public class Exercise extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name="mani";
		PrintWriter pw=resp.getWriter();
		pw.println("Hello");
		String fun=(String)req.getParameter("name");
		req.setAttribute("name", fun);
		RequestDispatcher rd=req.getRequestDispatcher("Demo.jsp");
		rd.forward(req, resp);
	}
}
