package com.doctor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DoctorDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Doctor> validate(String userName, String password) {
		
		ArrayList<Doctor> doc = new ArrayList<>();
		
		try { 
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from doctor where username='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				String department = rs.getString(7);
				String gender = rs.getString(8);
				String speciality = rs.getString(9);
				String licencenumber = rs.getString(10);
				String address = rs.getString(11);
				String shift = rs.getString(12);
				String appointmentfee = rs.getString(13);
				String consultationroom = rs.getString(14);
				
				Doctor d = new Doctor(id, name, email, phone, userU, passU, department, gender, speciality, licencenumber, address, shift, appointmentfee, consultationroom);
				doc.add(d);
			}
			
		} 
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return doc;
	}
	
	
public static boolean insertdoctor(String name, String email, String phone, String username, String password, String department, String gender, String speciality, String licencenumber, String address, String shift, String appointmentfee, String consultationroom) {
    	
    	boolean isSuccess = false;
    	
    	
    	try {
			
    		con = DBConnect.getConnection();
			stmt = con.createStatement();
			 
    	    String sql = "insert into doctor values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"', '"+department+"', '"+gender+"', '"+speciality+"', '"+licencenumber+"', '"+address+"', '"+shift+"', '"+appointmentfee+"', '"+consultationroom+"')";
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
	
public static boolean updatedoctor(String id, String name, String email, String phone, String username, String password, String department, String gender, String speciality, String licencenumber, String address, String shift, String appointmentfee, String consultationroom) {
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update doctor set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"', department='"+department+"', gender='"+gender+"',speciality='"+speciality+"',licencenumber='"+licencenumber+"',address='"+address+"',shift='"+shift+"',appointmentfee='"+appointmentfee+"',consultationroom='"+consultationroom+"'"
				+ "where id='"+id+"'";
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
	
public static List<Doctor> getDoctorDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Doctor> doc = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from doctor where id='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		 
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
			String department = rs.getString(7);
			String gender = rs.getString(8);
			String speciality = rs.getString(9);
			String licencenumber = rs.getString(10);
			String address = rs.getString(11);
			String shift = rs.getString(12);
			String appointmentfee = rs.getString(13);
			String consultationroom = rs.getString(14);
			
			Doctor d = new Doctor(id, name, email, phone, username, password, department, gender, speciality, licencenumber, address, shift, appointmentfee, consultationroom);
			doc.add(d);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return doc;	
} 

public static boolean deleteDoctor(String id) {
	
	int convId = Integer.parseInt(id);
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from doctor where id='"+convId+"'";
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

