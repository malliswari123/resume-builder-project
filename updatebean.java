package com.simple.beans;

public class updatebean {



	private String email;
	private String password;
	private String newpassword;
	
	public updatebean() {
		super();
	}
	public updatebean(String username, String email, String password, String newpassword) {
		super();
		this.email = email;
		this.password = password;
		this.newpassword = newpassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	
	

}
