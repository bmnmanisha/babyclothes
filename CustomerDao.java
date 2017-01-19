package com.children.dao;

import java.util.List;

import com.children.model.Customer;

public interface CustomerDao {
	void addCustomer(Customer customer);
	Customer getCustomerById(int customerId);
	List<Customer> getAllCustomer();
	Customer getCustomerByusername(String username);


}
