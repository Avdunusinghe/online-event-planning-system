package com.user.model;

/*This is the System User model class
 * 
 */

public class User {
	
	private int userId;
	private String name;
	private String  email;
	private String phone;
	private String password;
	private boolean isActive;
	private int type;
	
/*  constructor user model class
 * 
 */
	public User() {
		
		this.userId = 0;
		this.name = null;
		this.email = null;
		this.phone = null;
		this.password = null;
		this.isActive = true;
		this.type = 0;
	}
	
	
	public User(int userId, String name, String email, String phone, String password, boolean isActive, int type) {
	super();
	this.userId = userId;
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.password = password;
	this.isActive = isActive;
	this.type = type;
}


	public User(int userId, String name, String email, String phone, boolean isActive, int type) {
		this.userId = userId;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.isActive = isActive;
		this.type = type;
	}
	
	

   public User(int userId, String name, String email, String phone) {
	   
		this.userId = userId;
		this.name = name;
		this.email = email;
		this.phone = phone;
	}
   
   public User(int userId, String name, String email, String phone, String password) {
	   
		this.userId = userId;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}

/* Getters and Setters
 * 
 */
   /**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}



	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}



	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}



	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}



	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}



	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}



	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}



	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	/**
	 * @return the isActive
	 */
	public boolean isActive() {
		return isActive;
	}



	/**
	 * @param isActive the isActive to set
	 */
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}



	/**
	 * @return the type
	 */
	public int getType() {
		return type;
	}



	/**
	 * @param type the type to set
	 */
	public void setType(int type) {
		this.type = type;
	}
	
	
	
	//use debug 
	@Override
	public String toString() {
		return "User [userId=" + userId + ", name=" + name + ", email=" + email + ", phone=" + phone + ", isActive="
				+ isActive + ", type=" + type + "]";
	}



	
	
	
	
	
	
	
	
	
	
	
}
