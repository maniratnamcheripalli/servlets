package com.practise;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteCart")
public class DeleteCart extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			
			String name=req.getParameter("name");
			String i=req.getParameter("id");
			int id=Integer.parseInt(i);
			PrintWriter pw=resp.getWriter();
			pw.println("Hello");
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/website", "root", "root");
				HttpSession session=req.getSession();
				session.setAttribute("name", name);
				PreparedStatement ps = con.prepareStatement("delete from cart where productId=?");
				ps.setInt(1, id);
				ps.executeUpdate();
				ps.close();
				con.close();
				resp.sendRedirect("deleteCart.jsp");
				
			} catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		
	

}
