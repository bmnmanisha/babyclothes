package com.myclothes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Authorities {
	@Id

	@GeneratedValue(strategy = GenerationType.AUTO)

	private int authoritiesid;
	private String username;
	private String authority;

	public int getAuthoritiesid() {
		return authoritiesid;
	}

	public void setAuthoritiesid(int authoritiesid) {
		this.authoritiesid = authoritiesid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

}
