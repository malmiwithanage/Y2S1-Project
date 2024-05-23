package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Appointment;
import com.util.AppointmentDButil;


@WebServlet("/UpdateAppointmentSurvlet")
public class UpdateAppointmentSurvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String patientID=request.getParameter("pid");
		String doctorID =request.getParameter("did");
	    String appDate=request.getParameter("adt");
	
		
		
		boolean isTrue;
		//calling AppointmentDButil update method
		isTrue=AppointmentDButil.updateAppointment(patientID, doctorID, appDate);
		
		if(isTrue==true){
			
			List<Appointment> aDetails=AppointmentDButil.getAppointmentDetails(patientID);
			request.setAttribute("aDetails",aDetails);
			
			
			RequestDispatcher dis=request.getRequestDispatcher("AppointmentData.jsp");
			dis.forward(request, response);
			
			
		}
		else {
			List<Appointment> aDetails = AppointmentDButil.getAppointmentDetails(patientID);
			request.setAttribute("aDetails",aDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("AppointmentData.jsp");
			dis.forward(request, response);
		}
	}
}
