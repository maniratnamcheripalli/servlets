package com.registration;

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

public class InputData extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "root");

			PreparedStatement ps=con.prepareStatement("Select * from user where name=?");
			
			//PreparedStatement ps = con.prepareStatement("Insert Into user value(?,?)");
			PrintWriter pw = resp.getWriter();
			String name = req.getParameter("name");
			String country = req.getParameter("count");
//			ps.setString(1, name);
//			ps.setString(2, country);
//			ps.executeUpdate();
			ps.setString(1, name);
			ResultSet rs=ps.executeQuery();
			rs.next();
			String c=rs.getString(2);
			pw.println(c);
			con.close();
			pw.println("success");
			pw.close();

		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}

	}

}
