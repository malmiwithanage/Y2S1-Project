package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/appservlet")
public class appservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public appservlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String apppatname=request.getParameter("apppatname");


	  
	    boolean isTrue;
	    
	 
	    isTrue = com.util.Customerdbutil.deleteapp(apppatname);
	     
	    if(isTrue==true) {
	    	RequestDispatcher dis = request.getRequestDispatcher("abcdsuccess.jsp");
	    	dis.forward(request, response);
	    }else { 
	    	RequestDispatcher dis = request.getRequestDispatcher("abcdunsuccess.jsp");
	    	dis.forward(request, response);
	    }
	}

}