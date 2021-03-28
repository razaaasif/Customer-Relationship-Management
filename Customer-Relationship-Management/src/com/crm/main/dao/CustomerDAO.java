package com.crm.main.dao;

import java.util.List;

import com.crm.main.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);
}
