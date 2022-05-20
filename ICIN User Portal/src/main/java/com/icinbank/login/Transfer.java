package com.icinbank.login;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Transfer")
public class Transfer extends HttpServlet{

	private static final long serialVersionUID = -427556638076021060L;
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String fname=request.getParameter("firstname");
		System.out.println(fname);
		if(fname!=null&&fname!="") {
			response.sendRedirect("transfer1.jsp");
			
			
		}
		}
	}

