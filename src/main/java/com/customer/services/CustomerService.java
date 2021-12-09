package com.customer.services;

import java.util.List;
import org.springframework.stereotype.Service;

import com.customer.model.Customer;

@Service
public interface CustomerService{

	public List<Customer> getAllCustomers();

	public Customer getCustomerById(int id);

	public void addCustomer(Customer customer);

	public void deleteCustomer(int id);

}
