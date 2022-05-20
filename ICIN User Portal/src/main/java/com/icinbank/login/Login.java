package com.icinbank.login ;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Login")
public class Login extends HttpServlet {

	private static final long serialVersionUID = 4083846690835108221L;

protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
{	System.out.println("Working");
	String uname=request.getParameter("uname");
	String pass=request.getParameter("pass");
	LoginDao dao=new LoginDao();
	
	try {
		if(dao.checkDetail(uname, pass))
		{	
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			session.setAttribute("pass", pass);
			response.sendRedirect("home.jsp");
		}
		else
		{
			response.sendRedirect("loginErr.jsp");
		}
	} catch (SQLException e) {
		
		e.printStackTrace();
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}
}
