package com.doctor;

public class Patient {

	private int id;
    private String name;
    private String email;
    private String phone;
    private String userName;
    private String password;
    private String gender;
    private String address;
    private String dateofbirth;
    private String emergencycontact;
    private String medicalhistory;
    private String diagnosis;
    private String allergies;
    private String prescriptions;
    
	
    public Patient(int id, String name, String email, String phone, String userName, String password, String gender, String address, String dateofbirth, String emergencycontact, String medicalhistory, String diagnosis, String allergies, String prescriptions) {
	this.id = id;
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.userName = userName;
	this.password = password;
	this.gender = gender;
	this.address = address;
	this.dateofbirth = dateofbirth;
	this.emergencycontact = emergencycontact;
	this.medicalhistory = medicalhistory;
	this.diagnosis = diagnosis;
	this.allergies = allergies;
	this.prescriptions = prescriptions;
	
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
    public String getGender() {
        return gender;
    }
    public String getAddress() {
        return address;
    }
    public String getDateofbirth() {
        return dateofbirth;
    }
    public String getEmergencycontact() {
        return emergencycontact;
    }
    public String getPMedicalhistory() {
        return medicalhistory;
    }
    public String getDiagnosis() {
        return diagnosis;
    }
    public String getAllergies() {
        return allergies;
    }
    public String getPrescriptions() {
        return prescriptions;
    }
    
}
