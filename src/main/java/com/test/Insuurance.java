package com.test;

public class Insuurance {
	
	private String number;
	private String name;
	private String type;
	private String date;
	private String period;
	private String option;
	
	public Insuurance(String number, String name, String type, String date, String period, String option) {
		
		this.number = number;
		this.name = name;
		this.type = type;
		this.date = date;
		this.period = period;
		this.option = option;
	}

	public String getNumber() {
		return number;
	}

	public String getName() {
		return name;
	}

	public String getType() {
		return type;
	}

	public String getDate() {
		return date;
	}

	public String getPeriod() {
		return period;
	}

	public String getOption() {
		return option;
	}
	
	

}