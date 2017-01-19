package com.children.dao.impl;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.children.dao.CustomerDao;
import com.children.model.Customer;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void addCustomer(Customer customer) {

		Session session = sessionFactory.openSession();
		customer.getBillingAddress().setCustomer(customer);
		customer.getShippingAddress().setCustomer(customer);

		session.saveOrUpdate(customer);
		session.saveOrUpdate(customer.getBillingAddress());
		session.saveOrUpdate(customer.getShippingAddress());
		session.flush();
	}

	public Customer getCustomerById(int customerId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Customer> getAllCustomer() {
		// TODO Auto-generated method stub
		return null;
	}

	public Customer getCustomerByusername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
