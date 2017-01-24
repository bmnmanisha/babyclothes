package com.children.dao.impl;
import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.children.dao.CustomerDao;
import com.children.model.Authorities;
import com.children.model.Customer;
import com.children.model.Users;

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
		
		Users users=new Users();
		users.setUsername(customer.getUsername());
		users.setPassword(customer.getPassword());
		users.setEnabled(true);
		users.setCustomerId(customer.getCustomerId());
		
		Authorities authority= new Authorities();
        authority.setUsername(customer.getUsername());
        authority.setAuthority("ROLE_USER");
        
        session.saveOrUpdate(users);
        session.saveOrUpdate(authority);
		session.flush();
	}

	public void getCustomerById(int customerId) {
		// TODO Auto-generated method stub
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
