package com.children.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.children.dao.ProductDao;
import com.children.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;

	
	public void addProduct(Product product) {
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(product);
		session.flush();
		// TODO Auto-generated method stub
		
	}

	public void updateProduct(Product product) {
		
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		session.flush();
		// TODO Auto-generated method stub
		
	}

	public void deleteProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(product);
		session.flush();
		// TODO Auto-generated method stub
		
	}

	public Product getProductById(int id) {
		return null;
	}

	public List<Product> getProductList() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
