package com.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Appointment;

public class AppointmentDButil {
	

	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;

	
	
	public static List <Appointment> validate(String patientID,String doctorID){
		
		ArrayList <Appointment> AP = new ArrayList<> ();
											
		
		 
		 
		 try {
				
				
				con=DBConnect.getConnection();
				stmt=con.createStatement();
				String sql="select * from appointment where patientID = '"+patientID+"' and doctorID= '"+doctorID+"'";
				ResultSet rs=stmt.executeQuery(sql);
				
				if(rs.next()) {
					
					
					String patID=rs.getString(1);
					String docID=rs.getString(2);
					String apDate=rs.getString(3);
				
					
					
					
					Appointment a=new Appointment(patID,docID,apDate);
					AP.add(a);
				}
				
				
				
			}
			catch (SQLException e) {
				e.printStackTrace();
				
			}
		
		return AP;
		
	}
	
    public static boolean updateAppointment(String patientID,String doctorID,String appDate) {
	
		
		try {
			  
			  con=DBConnect.getConnection();
			  stmt=con.createStatement();
			  String sql="update Appointment set appDate= '"+appDate+"',doctorID='"+doctorID+"' " + " where patientID='"+patientID+"'";
			
			 int rs=stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
				 isSuccess=true;
				 
			 }
			 else {
				 isSuccess=false;
				 
			 }
			
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}
		
		return isSuccess;
		
	}
	
	
	
	
	public static List<Appointment> getAppointmentDetails(String patientID){
		
		int convertedID= Integer.parseInt(patientID);
		
		ArrayList<Appointment> App =new  ArrayList<> ();
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select * from appointment where patientID='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				String patID=rs.getString(1);
				String docID=rs.getString(2);
				String apDate=rs.getString(3);
				
				Appointment A=new Appointment(patID,docID,apDate);
				App.add(A);
			}
			
			
		
			
		}catch(SQLException e) {
			
			e.printStackTrace();
		}
		
		return App;
	}
	
	
	
	

}
