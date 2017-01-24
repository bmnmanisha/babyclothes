package com.children.service;

import java.util.List;

import com.children.model.Customer;

public interface CustomerService {
	void addCustomer(Customer customer);

	void getCustomerById(int customerId);

	List<Customer> getAllCustomers();

	Customer getCustomerByusername(String username);

}
