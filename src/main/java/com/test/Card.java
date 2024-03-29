package com.test;

public class Card {
	 private String cardno;
	    private String type;
	    private String username;
	    private String cvc;
	    private String expdate;

	    

	    public Card() {
	        
	    }

	    public Card(String cardno, String type, String username, String cvc, String expdate) {
	        this.cardno = cardno;
	        this.type = type;
	        this.username = username;
	        this.cvc = cvc;
	        this.expdate = expdate;
	    }

	    public String getCardno() {
	        return cardno;
	    }

	    public void setCardno(String cardno) {
	        this.cardno = cardno;
	    }

	    public String getType() {
	        return type;
	    }

	    public void setType(String type) {
	        this.type = type;
	    }

	    public String getUsername() {
	        return username;
	    }

	    public void setUsername(String username) {
	        this.username = username;
	    }

	    public String getCvc() {
	        return cvc;
	    }

	    public void setCvc(String cvc) {
	        this.cvc = cvc;
	    }

	    public String getExpdate() {
	        return expdate;
	    }

	    public void setExpdate(String expdate) {
	        this.expdate = expdate;
	    }
	}