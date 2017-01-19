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
import com.children.service.CustomerService;

@Controller
public class RegisterController {
    
	@RequestMapping("/register")
	public String registerCustomer() {

		return "register";
	}

	@ModelAttribute("registration")
	public Customer newcustomer() {
		return new Customer();
	}

	@Autowired
	private CustomerService customerService;

	@RequestMapping(value = "/registerCustomer", method = RequestMethod.POST)
	public ModelAndView registerCustomerPost(@ModelAttribute("customer") Customer customer, BindingResult result,
			HttpServletRequest request) {

		customerService.addCustomer(customer);
		ModelAndView model = new ModelAndView("registerSuccess");
		return model;
	}
}
