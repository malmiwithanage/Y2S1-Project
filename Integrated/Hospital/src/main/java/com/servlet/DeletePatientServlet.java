package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Patient;
import com.util.PatientDBUtil;

@WebServlet("/DeletePatientServlet")
public class DeletePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("patid");
		boolean isTrue;
		
		isTrue = PatientDBUtil.deletePatient(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("patientinsert.jsp");
			dispatcher.forward(request, response);
		}
		
		else {
			List<Patient> patDetails = PatientDBUtil.getPatientDetails(id);
			request.setAttribute("patDetails", patDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("patientaccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
