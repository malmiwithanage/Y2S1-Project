package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Customerdbutil;

@WebServlet("/updatecustomerservlet")
public class updatecustomerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public updatecustomerservlet() {
        super();
  
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String number=request.getParameter("number");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
	  
	    boolean isTrue;
	    
	 
	    isTrue = Customerdbutil.updatecustomer(name, email, number, username, password);
	     
	    if(isTrue==true) {
	    	RequestDispatcher dis = request.getRequestDispatcher("abcdsuccess.jsp");
	    	dis.forward(request, response);
	    }else {
	    	RequestDispatcher dis = request.getRequestDispatcher("abcdunsuccess.jsp");
	    	dis.forward(request, response);
	    }
	}

}