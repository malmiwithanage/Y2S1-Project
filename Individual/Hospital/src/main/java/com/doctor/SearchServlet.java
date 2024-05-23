package com.doctor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		
		
		try {
			List<Patient> patDetails = PatientDBUtil.validate(name);
			request.setAttribute("patDetails", patDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
			RequestDispatcher dis = request.getRequestDispatcher("patientdetails.jsp");
			dis.forward(request, response);
	
	}

}
