package com.util;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Customer;

public class Customerdbutil {
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	private static boolean isSuccess;
	
	public static boolean insertcustomer(String name,String email,String number,String username,String password) {
		isSuccess=false;
		try {
			con=Database.getConnection();
			stmt=con.createStatement();
		    String sql="insert into admin values('"+name+"','"+email+"','"+number+"','"+username+"','"+password+"')";
			
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
				
			}else {
				isSuccess =false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	//new
	public static List<Customer> validate(String username,String password){
		
		ArrayList<Customer> cus = new ArrayList<>();
		try {
		    con=Database.getConnection();
		    stmt=con.createStatement();
		    
		    String sql="select * from admin where name='"+username+"'";
		    rs=stmt.executeQuery(sql);
		    
		    if(rs.next()) {
		    	
		    	String name=rs.getString(1);
		    	String email=rs.getString(2);
		    	String number=rs.getString(3);
		        String username2=rs.getString(4);
		        String password2=rs.getString(5);

		    	Customer c1=new Customer(name, email,number,username2,password2);
		    	cus.add(c1);
		       }    
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		return cus;
	}
	
	public static boolean updatecustomer(String name,String email,String number,String username,String password) {
		try {
			con=Database.getConnection();
		    stmt=con.createStatement();
		    
		    String sql = "update admin set  email='"+email+"' ,number='"+number+"' ,username='"+username+"' ,password='"+password+"' "+" where name='"+name+"'    ";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) { isSuccess=true;
				
			}else {isSuccess =false;
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
	}
	//experiment
	public static boolean updatedoctor(String name,String password) {
		try {
			con=Database.getConnection();
		    stmt=con.createStatement();
		    
		    String sql = "update doctor set  password='"+password+"' "+" where name='"+name+"'    ";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) { isSuccess=true;
				
			}else {isSuccess =false;
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
	}
	
	public static boolean updatepat(String name,String password) {
		try {
			con=Database.getConnection();
		    stmt=con.createStatement();
		    
		    String sql = "update pat set  password='"+password+"' "+" where name='"+name+"'    ";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) { isSuccess=true;
				
			}else {isSuccess =false;
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
	}
	
	public static boolean deleteapp(String name) {
		try {
			con=Database.getConnection();
		    stmt=con.createStatement();
		    
		    String sql = "delete from app where apppatname='"+name+"'    ";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) { isSuccess=true;
				
			}else {isSuccess =false;
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
	}
	
	
	
	
	
	
	
}
