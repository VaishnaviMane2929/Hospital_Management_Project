package com.entity;

public class User {
	private int uid;
	private String ufullName;
	private String uemail;
	private String upassword;
	
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUfullName() {
		return ufullName;
	}
	public void setUfullName(String ufullName) {
		this.ufullName = ufullName;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	/**
	 * @param ufullName
	 * @param uemail
	 * @param upassword
	 */
	public User(String ufullName, String uemail, String upassword) {
		super();
		this.ufullName = ufullName;
		this.uemail = uemail;
		this.upassword = upassword;
	}
	
	

}
