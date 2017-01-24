package com.children.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.children.model.Customer;
import com.children.model.Product;
import com.children.service.ProductService;

@Controller
public class ProductController {
	
	@RequestMapping("/addProduct")
	public String Productadded() {
		return "addProduct";
	}

	@ModelAttribute("productsubmitted")
	public Product newproduct() {
		return new Product();
	}

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/productadd", method = RequestMethod.POST)
	public ModelAndView productaddPost(@ModelAttribute("productsubmitted") Product product, BindingResult result,
			HttpServletRequest request) {

		productService.addProduct(product);
		ModelAndView model = new ModelAndView("productAddSuccess");
		return model;
	}

}
