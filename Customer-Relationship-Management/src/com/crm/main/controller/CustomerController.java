package com.crm.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crm.main.entity.Customer;
import com.crm.main.service.CustomerService;


@RequestMapping("/customer")
@Controller	
public class CustomerController {
	
	// inject customer service
	@Autowired
	private CustomerService customerService;
	@GetMapping("/list")
	public String ListCustomer(Model theModel) {
		// get customer from the dao
		List <Customer> theCustomers = customerService.getCustomers();
		
		theModel.addAttribute("customers",theCustomers);
		
		// add those customer to Spring MVC model
		return "list-customer";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer", theCustomer);
		return "customer-form";
	}
	
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
		customerService.saveCustomer(theCustomer);
		return "redirect:/customer/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int theId,Model model) {
		
		// get the customer from the database
		
		Customer theCustomer= customerService.getCustomer(theId);
		
		// set customer as a model attribute to pre-populate the form 
		model.addAttribute("customer", theCustomer);
		 
		// send it our form
		return "customer-form";
	}
	
	@GetMapping("/deleteCustomer")
	public String deleteCustomer(@RequestParam("customerId") int theId) {
		customerService.deleteCustomer(theId);
		
		return "redirect:/customer/list";
	}
	
	
	@GetMapping("/contact")
	public String Contact() {
		return "contact-us";
		
	}
}
