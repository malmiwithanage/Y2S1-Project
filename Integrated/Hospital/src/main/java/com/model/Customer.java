package com.model;

public class Customer {
	private String name;
	private String email;
	private String number;
	private String username;
	private String password;
	

    public Customer(String name, String email, String number, String username, String password) {
		
		this.name = name;
		this.email = email;
		this.number = number;
		this.username = username;
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}
	public String getNumber() {
		return number;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}
}
