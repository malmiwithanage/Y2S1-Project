package com.doctor;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateDoctorServlet")
public class UpdateDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("docid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		String department = request.getParameter("department");
		String gender = request.getParameter("gender");
		String speciality = request.getParameter("speciality");
		String licencenumber = request.getParameter("licencenumber");
		String address = request.getParameter("address");
		String shift = request.getParameter("shift");
		String appointmentfee = request.getParameter("appointmentfee");
		String consultationroom = request.getParameter("consultationroom");
		
		boolean isTrue;
		
		isTrue = DoctorDBUtil.updatedoctor(id, name, email, phone, username, password, department, gender, speciality, licencenumber, address, shift, appointmentfee, consultationroom);
		
		if(isTrue == true) {
			
			List<Doctor> docDetails = DoctorDBUtil.getDoctorDetails(id);
			request.setAttribute("docDetails", docDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		
		else {
			List<Doctor> docDetails = DoctorDBUtil.getDoctorDetails(id);
			request.setAttribute("docDetails", docDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		
	}

}
