package com.customer.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.customer.model.Customer;
import com.customer.repository.CustomerRepository;

@Service
public class CustomerServiceImplementation implements CustomerService{

	@Autowired
	CustomerRepository customerRepository;
	
	@Override
	public List<Customer> getAllCustomers(){	
		return (List<Customer>) customerRepository.findAll();
	}

	@Override
	public Customer getCustomerById(int id){
		return customerRepository.findById(id).get();
	}

	@Override
	public void addCustomer(Customer customer){
		customerRepository.save(customer);
	}

	@Override
	public void deleteCustomer(int id){
		customerRepository.deleteById(id);
	}
}
