package com.test;

import java.sql.ResultSet;

public class Reservation {
	private String carno;
	private String name;
    private String nic;
    private String address;
    private String reserveDate;
    private String email;
    
    public Reservation(){
    	
    }
	
	public Reservation(String carno, String name, String nic, String address, String reserveDate, String email) {
		
		this.carno = carno;
		this.name = name;
		this.nic = nic;
		this.address = address;
		this.reserveDate = reserveDate;
		this.email = email;
	}
	public String getCarno() {
		return carno;
	}

	public String getName() {
		return name;
	}

	public String getNic() {
		return nic;
	}

	public String getAddress() {
		return address;
	}

	public String getReserveDate() {
		return reserveDate;
	}

	public String getEmail() {
		return email;
	}

	public void setCarno(String carno) {
		this.carno = carno;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	   public Reservation(ResultSet rs) throws Exception {
	        this.carno= rs.getString("carno");
	        this.name = rs.getString("name");
	        this.nic =rs.getString("nic");
	        this.address =rs.getNString("address");
	        this.reserveDate = rs.getString("reserveDate");
	        this.email = rs.getNString("email");
	   } 
	
}