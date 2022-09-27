package com.read;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Read extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String i=req.getParameter("id");
		String name=req.getParameter("name");
		int id=Integer.parseInt(i);
		PrintWriter pw=resp.getWriter();
		try {
			pw.println(id);
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techouts","root","root");
			PreparedStatement st=con.prepareStatement("select * from employee where emp_id=?");	
			st.setInt(1,id);
			ResultSet rs=st.executeQuery();
			rs.next();
			String num=rs.getString(3);
			pw.println(num);	
			st.close();
			con.close();
			pw.println("Success");
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
	}

	
}
