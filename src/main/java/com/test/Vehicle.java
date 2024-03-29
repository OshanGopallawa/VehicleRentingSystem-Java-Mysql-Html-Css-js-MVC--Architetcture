package com.test;

public class Vehicle {
	
	private int id;
	private String name;
	private String number;
	private String type;
	private String date;
	private String option;
	
	public Vehicle(int id, String name, String number, String type, String date, String option) {
		super();
		this.id = id;
		this.name = name;
		this.number = number;
		this.type = type;
		this.date = date;
		this.option = option;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getNumber() {
		return number;
	}

	public String getType() {
		return type;
	}

	public String getDate() {
		return date;
	}

	public String getOption() {
		return option;
	}
	


	
	

}