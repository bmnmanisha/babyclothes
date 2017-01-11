package com.myclothes.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class SippingAddress implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int sippingaddressid;
	private String street;
	private String city;
	private String state;
	private String country;
	private String pincode;

	public int getSippingaddressid() {
		return sippingaddressid;
	}

	public void setSippingaddressid(int sippingaddressid) {
		this.sippingaddressid = sippingaddressid;
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

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

}
