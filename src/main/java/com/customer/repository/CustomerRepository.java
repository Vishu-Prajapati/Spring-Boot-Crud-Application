package com.customer.repository;

import org.springframework.data.repository.CrudRepository;
import com.customer.model.Customer;

import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends CrudRepository<Customer,Integer>{

}