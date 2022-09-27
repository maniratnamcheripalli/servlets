package com.practise;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Connecting extends HttpServlet {
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String i=req.getParameter("id");
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String contact=req.getParameter("contact");
		try {
			PrintWriter pw=resp.getWriter();
			int id=Integer.parseInt(i);
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techouts","root","root");
			PreparedStatement ps = con.prepareStatement("insert into employee values (?,?,?,?)");
			ps.setInt(1,id);
			ps.setString(2, name);
			ps.setString(3,email );
			ps.setString(4,contact);
			ps.executeUpdate();
			con.close();
			pw.println("Success");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	

	}

}
