package com.myclothes.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity

public class Customer implements Serializable {

	@Id
	
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int customerid;
	private String customername;
	private String customeremail;
	private int customerphonenumber;
	private String username;
	private String password;
	@OneToOne
	
	private BillingAddress billingaddress;
	@OneToOne
	
	private SippingAddress sippingaddress;
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getCustomeremail() {
		return customeremail;
	}
	public void setCustomeremail(String customeremail) {
		this.customeremail = customeremail;
	}
	public int getCustomerphonenumber() {
		return customerphonenumber;
	}
	public void setCustomerphonenumber(int customerphonenumber) {
		this.customerphonenumber = customerphonenumber;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public BillingAddress getBillingaddress() {
		return billingaddress;
	}
	public void setBillingaddress(BillingAddress billingaddress) {
		this.billingaddress = billingaddress;
	}
	public SippingAddress getSippingaddress() {
		return sippingaddress;
	}
	public void setSippingaddress(SippingAddress sippingaddress) {
		this.sippingaddress = sippingaddress;
	}
}
