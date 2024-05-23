package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Customerdbutil;


@WebServlet("/customerinsert1")
public class customerinsert1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public customerinsert1() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String number= request.getParameter("phone");
		String username= request.getParameter("uid");
		String password= request.getParameter("psw");
		
		boolean istrue;
		
		istrue=Customerdbutil.insertcustomer(name, email, number, username, password);
		if(istrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("abcdsuccess.jsp"); 
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("abcdunsuccess.jsp"); 
			dis2.forward(request, response);
		}
		
	}

}