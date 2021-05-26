package com.sponsors.model;

public class Sponsor {
	
	private int sponsorId;
	private String name;
	private String email;
	private String address;
	private String phone;
	
	
	
	public Sponsor(int sponsorId, String name, String email, String address, String phone) {
		super();
		this.sponsorId = sponsorId;
		this.name = name;
		this.email = email;
		this.address = address;
		this.phone = phone;
	}



	public int getSponsorId() {
		return sponsorId;
	}



	public void setSponsorId(int sponsorId) {
		this.sponsorId = sponsorId;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
	
	
	

}
