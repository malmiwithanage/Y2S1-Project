package com.model;

public class Doctor extends Person{

	
    private String department;
    private String speciality;
    private String licencenumber;
    private String shift;
    private String appointmentfee;
    private String consultationroom;
    
    
    
	public Doctor(String department, String speciality, String licencenumber, String shift,
			String appointmentfee, String consultationroom) {
		this.department = department;
		this.speciality = speciality;
		this.licencenumber = licencenumber;
		this.shift = shift;
		this.appointmentfee = appointmentfee;
		this.consultationroom = consultationroom;
	}

	public Doctor(int id, String name, String email, String phone, String userName, String password, String address,
			String gender, String department, String speciality, String licencenumber, String shift,
			String appointmentfee, String consultationroom) {
		super(id, name, email, phone, userName, password, address, gender);
		this.department = department;
		this.speciality = speciality;
		this.licencenumber = licencenumber;
		this.shift = shift;
		this.appointmentfee = appointmentfee;
		this.consultationroom = consultationroom;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public String getLicencenumber() {
		return licencenumber;
	}

	public void setLicencenumber(String licencenumber) {
		this.licencenumber = licencenumber;
	}

	public String getShift() {
		return shift;
	}

	public void setShift(String shift) {
		this.shift = shift;
	}

	public String getAppointmentfee() {
		return appointmentfee;
	}

	public void setAppointmentfee(String appointmentfee) {
		this.appointmentfee = appointmentfee;
	}

	public String getConsultationroom() {
		return consultationroom;
	}

	public void setConsultationroom(String consultationroom) {
		this.consultationroom = consultationroom;
	}
	
    
}
