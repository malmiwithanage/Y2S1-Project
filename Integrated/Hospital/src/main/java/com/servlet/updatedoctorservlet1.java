package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Customerdbutil;


@WebServlet("/updatedoctorservlet")
public class updatedoctorservlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public updatedoctorservlet1() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name=request.getParameter("doctorname");

		String password=request.getParameter("doctorpassword");
	  
	    boolean isTrue;
	    
	 
	    isTrue = Customerdbutil.updatedoctor(name, password);
	     
	    if(isTrue==true) {
	    	RequestDispatcher dis = request.getRequestDispatcher("abcdsuccess.jsp");
	    	dis.forward(request, response);
	    }else { 
	    	RequestDispatcher dis = request.getRequestDispatcher("abcdunsuccess.jsp");
	    	dis.forward(request, response);
	    }
		
		
	}

}