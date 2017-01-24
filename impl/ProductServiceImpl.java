package com.children.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.children.dao.ProductDao;
import com.children.model.Product;
import com.children.service.ProductService;
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	public void addProduct(Product product) {
        productDao.addProduct(product);
		// TODO Auto-generated method stub
		
	}

	public void updateProduct(Product product) {
		 productDao.updateProduct(product);
		// TODO Auto-generated method stub
		
	}

	public void deleteProduct(Product product) {
		 productDao.deleteProduct(product);
		// TODO Auto-generated method stub
		
	}

	public Product getProductById(int productId) {
		return null;
		// TODO Auto-generated method stub
	}

	public List<Product> getProductList() {
		// TODO Auto-generated method stub
		return null;
	}

		}
