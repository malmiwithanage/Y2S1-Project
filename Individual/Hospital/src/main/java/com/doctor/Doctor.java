package com.doctor;

public class Doctor {

	private int id;
    private String name;
    private String email;
    private String phone;
    private String userName;
    private String password;
    private String department;
    private String gender;
    private String speciality;
    private String licencenumber;
    private String address;
    private String shift;
    private String appointmentfee;
    private String consultationroom;
	
    public Doctor(int id, String name, String email, String phone, String userName, String password, String department, String gender, String speciality, String licencenumber, String address, String shift, String appointmentfee, String consultationroom) {
	this.id = id;
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.userName = userName;
	this.password = password;
	this.department = department;
	this.gender = gender;
	this.speciality = speciality;
	this.licencenumber = licencenumber;
	this.address = address;
	this.shift = shift;
	this.appointmentfee = appointmentfee;
	this.consultationroom = consultationroom;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }  
    public String getDepartment() {
        return department;
    } 
    public String getGender() {
        return gender;
    } 
    public String getSpeciality() {
        return speciality;
    } 
    public String getLicencenumber() {
        return licencenumber;
    } 
    public String getAddress() {
        return address;
    } 
    public String getShift() {
        return shift;
    } 
    public String getAppointmentfee() {
        return appointmentfee;
    } 
    public String getConsultationroom() {
        return consultationroom;
    } 
}
