package com.crm.main.dao;

import java.util.List;  



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.crm.main.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	// need to inject the session factory
	
	@Autowired
	private SessionFactory sessionFactory; 
	
	@Override
	public List<Customer> getCustomers() {
		// get the current hibernate session
		Session session = sessionFactory.getCurrentSession();
		
		// create a query .. sort by first name
		Query<Customer> theQuery = session.createQuery("from Customer order by firstName ", Customer.class);
		
		//execute and get result list
		List <Customer> customers = theQuery.getResultList();
		// return the results
		return customers;
	}

	@Override
	public void saveCustomer(Customer theCustomer) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(theCustomer);
	}

	@Override
	public Customer getCustomer(int theId) {
		Session session = sessionFactory.getCurrentSession();
		Customer customer = session.get(Customer.class, theId);
		return customer;
	}

	@Override
	public void deleteCustomer(int theId) {
		Session session=sessionFactory.getCurrentSession();
		Customer customer =session.get(Customer.class, theId);
		session.delete(customer);
	}

}
