package com.practise;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Cart extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("P_name");
		String co = req.getParameter("cost");
		int cost = Integer.parseInt(co);
		String i = req.getParameter("id");
		int Id = Integer.parseInt(i);
		PrintWriter pw = resp.getWriter();
		pw.println("Hello");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/website", "root", "root");
			HttpSession session = req.getSession();
			session.setAttribute("p_name", name);
			String carti=(String) session.getAttribute(name);
			pw.println(carti);
			pw.println(session.getAttribute(name));
			PreparedStatement ps = con.prepareStatement("insert into cart values(?,?,?)");
			ps.setString(1, name);
			ps.setInt(2, Id);
			ps.setInt(3, cost);
			ps.executeUpdate();
			ps.close();
			con.close();
			resp.sendRedirect("addedCart.jsp");
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
