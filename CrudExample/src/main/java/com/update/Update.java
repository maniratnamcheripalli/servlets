package com.update;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Update extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter pw = resp.getWriter();
		String i = req.getParameter("id");
		int id = Integer.parseInt(i);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techouts", "root", "root");
			PreparedStatement ps = con.prepareStatement("update employee set emp_name='rajesh' where emp_id=?");

			ps.setInt(1, id);
			ps.executeUpdate();
			con.close();
			pw.println("Success");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
