package com.myclothes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Users {
	@Id

	@GeneratedValue(strategy = GenerationType.AUTO)

	private int usersid;
	private String usersname;
	private String userspassword;
	private boolean enabled;
	private int customerid;

	public int getUsersid() {
		return usersid;
	}

	public void setUsersid(int usersid) {
		this.usersid = usersid;
	}

	public String getUsersname() {
		return usersname;
	}

	public void setUsersname(String usersname) {
		this.usersname = usersname;
	}

	public String getUserspassword() {
		return userspassword;
	}

	public void setUserspassword(String userspassword) {
		this.userspassword = userspassword;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public int getCustomerid() {
		return customerid;
	}

	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}

}
