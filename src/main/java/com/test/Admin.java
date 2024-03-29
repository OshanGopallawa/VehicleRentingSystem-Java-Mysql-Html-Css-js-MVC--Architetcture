package com.test;

public class Admin {
	
	private int aid;
	private String aname;
	private String pass;
	
	public Admin(int aid, String aname, String pass) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.pass = pass;
	}
	
	public Admin(int aid) {
		super();
		this.aid = aid;
	}

	public int getAid() {
		return aid;
	}
	public String getAname() {
		return aname;
	}
	public String getPass() {
		return pass;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	
} 