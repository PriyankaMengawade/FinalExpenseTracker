package com.project.model;


import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Expense 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String description;
	private double amount;
	//@DateTimeFormat
	private Date date;
	private String name;
	private String email;
	private String password;
	private String phonenumber;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public Expense(int id, String description, double amount, Date date, String name, String email, String password,
			String phonenumber) {
		super();
		this.id = id;
		this.description = description;
		this.amount = amount;
		this.date = date;
		this.name = name;
		this.email = email;
		this.password = password;
		this.phonenumber = phonenumber;
	}
	public Expense() {
		super();
	}
	@Override
	public String toString() {
		return "Expense [id=" + id + ", description=" + description + ", amount=" + amount + ", date=" + date
				+ ", name=" + name + ", email=" + email + ", password=" + password + ", phonenumber=" + phonenumber
				+ "]";
	}
	
}