package com.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Mani extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/mani");
			PreparedStatement ps=co.prepareStatement("select * from name where id=1");
			ResultSet rs=ps.executeQuery();
			
			rs.next();
			
			String name=rs.getString(1);
			
			PrintWriter pw=resp.getWriter();
			pw.print(name);
			ps.close();
			co.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}

}
