package com.test;

public class provider {

	private int id;
	private String name;
	private String email;
	private String address;
	private String password;
	private String mobile;
	
	
	public provider(int id, String name, String email, String address, String password, String mobile) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.address = address;
		this.password = password;
		this.mobile = mobile;
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


	public String getAddress() {
		return address;
	}


	public String getPassword() {
		return password;
	}


	public String getMobile() {
		return mobile;
	}
	

}
