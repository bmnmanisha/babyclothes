package com.children.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.children.dao.CustomerDao;
import com.children.model.Customer;
import com.children.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;

	public void addCustomer(Customer customer) {
		customerDao.addCustomer(customer);
		// TODO Auto-generated method stub

	}

	public void getCustomerById(int customerId) {
		// TODO Auto-generated method stub
	}

	public List<Customer> getAllCustomers() {
		// TODO Auto-generated method stub
		return null;
	}

	public Customer getCustomerByusername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
