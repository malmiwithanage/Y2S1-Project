package com.doctor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePatientServlet")
public class UpdatePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String id = request.getParameter("pid");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String username = request.getParameter("uname");
			String password = request.getParameter("pass");
			String gender = request.getParameter("gender");
			String address = request.getParameter("address");
			String dateofbirth = request.getParameter("dateofbirth");
			String emergencycontact = request.getParameter("emergencycontact");
			String medicalhistory = request.getParameter("medicalhistory");
			String diagnosis = request.getParameter("diagnosis");
			String allergies = request.getParameter("allergies");
			String prescriptions = request.getParameter("prescriptions");
			
			boolean isTrue;
			
			isTrue = PatientDBUtil.updatepatient(id, name, email, phone, username, password, gender, address, dateofbirth, emergencycontact, medicalhistory, diagnosis, allergies, prescriptions);
			
			if(isTrue == true) {
				
				List<Patient> patDetails = PatientDBUtil.getPatientDetails(id);
				request.setAttribute("patDetails", patDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("patientdetails.jsp");
				dis.forward(request, response);
			}
			
			else {
				List<Patient> patDetails = PatientDBUtil.getPatientDetails(id);
				request.setAttribute("patDetails", patDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("patientdetails.jsp");
				dis.forward(request, response);
			}
	
	}

}
