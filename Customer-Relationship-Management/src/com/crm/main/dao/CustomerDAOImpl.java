package com.crm.main.dao;

import java.util.List;

import javax.xml.transform.ErrorListener;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crm.main.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	// need to inject the session factory
	
	@Autowired
	private SessionFactory sessionFactory; 
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		// get the current hibernate session
		Session session = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Customer> theQuery = session.createQuery("from Customer", Customer.class);
		
		//execute and get result list
		List <Customer> customers = theQuery.getResultList();
		// return the results
		return customers;
	}

}