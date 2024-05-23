package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Patient;

public class PatientDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Patient> validate(String name) {
		
		ArrayList<Patient> pat = new ArrayList<>();
		
		try { 
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from patient where name='"+name+"' ";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String pname = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				String gender = rs.getString(7);
				String address = rs.getString(8);
				String dateofbirth = rs.getString(9);
				String emergencycontact = rs.getString(10);
				String medicalhistory = rs.getString(11);
				String diagnosis = rs.getString(12);
				String allergies = rs.getString(13);
				String prescriptions = rs.getString(14);
				
				
				Patient p = new Patient(id, pname, email, phone, userU, passU, gender, address, dateofbirth, emergencycontact, medicalhistory, diagnosis, allergies, prescriptions);
				pat.add(p);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return pat;
	}
	
	
public static boolean insertpatient(String name, String email, String phone, String username, String password, String gender, String address, String dateofbirth, String emergencycontact, String medicalhistory, String diagnosis, String allergies, String prescriptions) {
    	
    	boolean isSuccess = false;
    	
    	
    	try {
			
    		con = DBConnect.getConnection();
			stmt = con.createStatement();
			 
    	    String sql = "insert into patient values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"', '"+gender+"', '"+address+"', '"+dateofbirth+"', '"+emergencycontact+"', '"+medicalhistory+"', '"+diagnosis+"', '"+allergies+"', '"+prescriptions+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
	
public static boolean updatepatient(String id, String name, String email, String phone, String username, String password, String gender, String address, String dateofbirth, String emergencycontact, String medicalhistory, String diagnosis, String allergies, String prescriptions) {
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update patient set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"', gender='"+gender+"', gender='"+address+"', dateofbirth='"+dateofbirth+"', emergencycontact='"+emergencycontact+"', medicalhistory='"+medicalhistory+"', diagnosis='"+diagnosis+"', allergies='"+allergies+"', prescriptions='"+prescriptions+"'"
				+ " where id='"+id+"'";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
} 
	
public static List<Patient> getPatientDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Patient> pat = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from patient where id='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
			String gender = rs.getString(7);
			String address = rs.getString(8);
			String dateofbirth = rs.getString(9);
			String emergencycontact = rs.getString(10);
			String medicalhistory = rs.getString(11);
			String diagnosis = rs.getString(12);
			String allergies = rs.getString(13);
			String prescriptions = rs.getString(14);
			
			Patient p = new Patient(id, name, email, phone, username, password, gender, address, dateofbirth, emergencycontact, medicalhistory, diagnosis, allergies, prescriptions);
			pat.add(p);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return pat;	
} 


public static boolean deletePatient(String id) {
	
	int convId = Integer.parseInt(id);
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from patient where id='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if(r>0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
	
}