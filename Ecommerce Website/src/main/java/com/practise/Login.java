package com.practise;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("username");
		String password = req.getParameter("password");
		PrintWriter pw = resp.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/website", "root", "root");
			HttpSession session = req.getSession();
			session.setAttribute("name", name);

			Cookie ck = new Cookie("username", name);
			resp.addCookie(ck);

			PreparedStatement ps = con.prepareStatement("select * from profiles where username=?");
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
			rs.next();
			String dbusername = rs.getString(3);
			String dbPassword = rs.getString(4);

			if ((name.equals(dbusername)) && (password.equals(dbPassword))) {
				resp.sendRedirect("Login.jsp");
			} else {
				resp.sendRedirect("Error.jsp");
			}
			ps.close();
			con.close();
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
