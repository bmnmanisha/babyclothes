package com.children.dao;

import java.util.List;

import com.children.model.Product;

public interface ProductDao {

	    
	 void addProduct(Product product);

	 void updateProduct(Product product);

	 void deleteProduct(Product product);
	 
	 Product getProductById(int id);

     List<Product> getProductList();


	 }
