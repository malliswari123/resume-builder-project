package com.simple.beans;

public class NextFilebean {

	private String name;
	private String contact;
	private String about;
	private String follow;

	private String education;
	private String skills;
	private String interests;
	private String certificate;
	
	
	public NextFilebean() {
		super();
	}
	public NextFilebean(String name, String contact, String about, String follow, String education, String skills,
			String interests, String certificate) {
		super();
		this.name = name;
		this.contact = contact;
		this.about = about;
		this.follow = follow;
		this.education = education;
		this.skills = skills;
		this.interests = interests;
		this.certificate = certificate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getFollow() {
		return follow;
	}
	public void setFollow(String follow) {
		this.follow = follow;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getInterests() {
		return interests;
	}
	public void setInterests(String interests) {
		this.interests = interests;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	
}
