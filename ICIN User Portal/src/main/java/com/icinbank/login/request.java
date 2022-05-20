package com.icinbank.login;

import java.io.IOException;
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


@WebServlet("/request")
public class request extends HttpServlet {

	private static final long serialVersionUID = 260475678695903767L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String un=(String) session.getAttribute("username");
		String pass=(String) session.getAttribute("pass");
		String a=request.getParameter("savings");
		String b=request.getParameter("nik");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bank","root","root");
			PreparedStatement mn=con1.prepareStatement("select * from customer where user_name=? and pass=?");
			mn.setString(1, un);
			mn.setString(2, pass);
			ResultSet rs=mn.executeQuery();
			rs.next();
			String r=rs.getString(11);
			String r1=rs.getString(12);
			Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bank","root","root");
			PreparedStatement st=con.prepareStatement("insert into request values(? ,?,?,?,?,?)");
			st.setString(1, un);
			st.setString(2, a);
			st.setString(3,b);
			st.setString(4, "yes");
			st.setString(5, r);
			st.setString(6, r1);
			@SuppressWarnings("unused")
			int count=st.executeUpdate();
			response.sendRedirect("home.jsp");
		}
			catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}}}
