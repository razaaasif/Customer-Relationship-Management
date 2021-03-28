package com.crm.main.service;

import java.util.List;

import com.crm.main.entity.Customer;

public interface CustomerService {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);
}
