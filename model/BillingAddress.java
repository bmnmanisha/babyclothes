package com.myclothes.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class BillingAddress implements Serializable {
	@Id
	
   @GeneratedValue(strategy = GenerationType.AUTO)
	private int billingaddressid;
	private String street;
	private String city;
	private String state;
	private String country;
	private int pincode;
	public int getBillingaddressid() {
		return billingaddressid;
	}
	public void setBillingaddressid(int billingaddressid) {
		this.billingaddressid = billingaddressid;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

}
