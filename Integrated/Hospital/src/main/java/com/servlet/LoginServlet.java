package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Customer;
import com.util.Customerdbutil;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("uid");
		String password=request.getParameter("pass");
		try {
			List<Customer> cusdetails = Customerdbutil.validate(username, password);
		    request.setAttribute("cusdetails",cusdetails);
		
		    RequestDispatcher dis = request.getRequestDispatcher("abcduseraccount.jsp");
		    dis.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}