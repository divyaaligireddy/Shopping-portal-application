package com.sp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RestResource;

import com.sp.dto.Customer;

@RestResource(path="Customer", rel="Customer")
public interface CustomerRepository extends CrudRepository<Customer, Integer> {

	//Customer findByLastname(String name);
}
