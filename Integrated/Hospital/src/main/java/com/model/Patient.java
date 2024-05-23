package com.model;

public class Patient extends Person{

    private String dateofbirth;
    private String emergencycontact;
    private String medicalhistory;
    private String diagnosis;
    private String allergies;
    private String prescriptions;
    
    
	public Patient(int id, String name, String email, String phone, String userName, String password, String address,
			String gender, String dateofbirth, String emergencycontact, String medicalhistory, String diagnosis,
			String allergies, String prescriptions) {
		super(id, name, email, phone, userName, password, address, gender);
		this.dateofbirth = dateofbirth;
		this.emergencycontact = emergencycontact;
		this.medicalhistory = medicalhistory;
		this.diagnosis = diagnosis;
		this.allergies = allergies;
		this.prescriptions = prescriptions;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getEmergencycontact() {
		return emergencycontact;
	}
	public void setEmergencycontact(String emergencycontact) {
		this.emergencycontact = emergencycontact;
	}
	public String getMedicalhistory() {
		return medicalhistory;
	}
	public void setMedicalhistory(String medicalhistory) {
		this.medicalhistory = medicalhistory;
	}
	public String getDiagnosis() {
		return diagnosis;
	}
	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}
	public String getAllergies() {
		return allergies;
	}
	public void setAllergies(String allergies) {
		this.allergies = allergies;
	}
	public String getPrescriptions() {
		return prescriptions;
	}
	public void setPrescriptions(String prescriptions) {
		this.prescriptions = prescriptions;
	}
    
	
    

    
    
}
