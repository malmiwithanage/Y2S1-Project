package com.model;

public class Appointment {
	
	private String patientID;
	private String doctorID;
	private String appDate;

	//appointment overload constructer
	
	public Appointment(String patientID, String doctorID, String appDate) {
		
		this.patientID = patientID;
		this.doctorID = doctorID;
		this.appDate = appDate;
	}

//getters
	public String getPatientID() {
		return patientID;
	}


	public String getDoctorID() {
		return doctorID;
	}


	public String getAppDate() {
		return appDate;
	}


	
	
	

	
	
}