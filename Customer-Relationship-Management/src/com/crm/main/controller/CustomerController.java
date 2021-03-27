package com.crm.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.crm.main.dao.CustomerDAO;
import com.crm.main.entity.Customer;
@RequestMapping("/customer")
@Controller	
public class CustomerController {
	
	
	// need to inject 
	@Autowired
	private CustomerDAO customerDAO;
	
	@RequestMapping("/list")
	public String ListCustomer(Model theModel) {
		// get customer from the dao
		List <Customer> theCustomers = customerDAO.getCustomers();
		
		theModel.addAttribute("customers",theCustomers);
		
		// add those customer to Spring MVC model
		return "list-customer";
	}
}
