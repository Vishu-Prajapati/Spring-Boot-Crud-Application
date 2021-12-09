package com.customer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Date;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "customer")
@Component
public class Customer{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Column(name="id")
	private int id;
	@Column(name="first_name")
	private String firstname;
	@Column(name="last_name")
	private String lastname;
	@Column(name="date_of_birth")
	private Date date_of_birth;
	@Column(name="mobile")
	private String mobile;
	@Column(name="address_1")
	private String address1;
	@Column(name="address_2")
	private String address2;
	@Column(name="age")
	private int age;
	@Column(name="gender")
	private String gender;
	@Column(name="email")
	private String email;
	
	public Customer()
	{}
	
	public Customer(int id, String firstname, String lastname, Date date_of_birth, String mobile, String address1, String address2, int age, String gender ,String email){
	this.id = id;
	this.firstname = firstname;
	this.lastname = lastname;
	this.date_of_birth = date_of_birth;
	this.mobile = mobile;
	this.address1 = address1;
	this.address2 = address2;
	this.age = age;
	this.gender = gender;
	this.email = email;
	}
	
	//Getters And Setters
	
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}
	
	public String getFirstname(){
		return firstname;
	}
	public void setFirstname(String firstname){
		this.firstname = firstname;
	}
	
	public String getLastname(){
		return lastname;
	}
	public void setLastname(String lastname){
		this.lastname = lastname;
	}
	
	public Date getDate_of_birth(){
		return date_of_birth;
	}
	public void setDate_of_birth(Date date_of_birth){
		this.date_of_birth = date_of_birth;
	}
	
	public String getMobile(){
		return mobile;
	}
	public void setMobile(String mobile){
		this.mobile = mobile;
	}
	
	public String getAddress1(){
		return address1;
	}
	public void setAddress1(String address1){
		this.address1 = address1;
	}
	
	public String getAddress2(){
		return address2;
	}
	public void setAddress2(String address2){
		this.address2 = address2;
	}
	
	public int getAge(){
		return age;
	}
	public void setAge(int age){
		this.age = age;
	}
	
	public String getGender(){
		return gender;
	}
	public void setGender(String gender){
		this.gender = gender;
	}
	
	public String getEmail(){
		return email;
	}
	public void setEmail(String email){
		this.email = email;
	}
}
