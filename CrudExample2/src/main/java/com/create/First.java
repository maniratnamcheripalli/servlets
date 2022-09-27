package com.create;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class First extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter pw = resp.getWriter();
		pw.println("Hello");

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudexample2", "root", "root");

			PreparedStatement p = con.prepareStatement("insert into student values(?,?,?,?)");

			String s = req.getParameter("id");
			int id = Integer.parseInt(s);
			String name = req.getParameter("name");
			String mail = req.getParameter("mail");
			String branch = req.getParameter("branch");
			p.setInt(1, id);
			p.setString(2, name);
			p.setString(3, branch);
			p.setString(4, mail);
			p.executeUpdate();
			p.close();
			con.close();
			pw.print("Success");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}
}
