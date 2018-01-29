package com.serappaltun.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class GuestUser implements Serializable{
	
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private int id;
	
	private String name;
	private String email;
	private String phone;
	private String address;
	private String thoughts;
	private String filepath;
	private int jobId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getThoughts() {
		return thoughts;
	}
	public void setThoughts(String thoughts) {
		this.thoughts = thoughts;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	
	public int getJobId() {
		return jobId;
	}
	
	public GuestUser(String name, String email, String phone, String address, String thoughts, String filepath,int jobId) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.thoughts = thoughts;
		this.filepath = filepath;
		this.jobId = jobId;
	}
	public GuestUser(){}
	

}
