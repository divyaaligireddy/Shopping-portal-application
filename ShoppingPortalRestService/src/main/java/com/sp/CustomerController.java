package com.sp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.sp.dto.Customer;
import com.sp.service.CustomerService;

@RestController
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/customers")
	public List<Customer> getAllCustomers() {
		return customerService.retrieveAllCustomers();
	}
	
	@GetMapping("/customers/{customerID}")
	public Customer getCustomer(@PathVariable int customerID) {
		return customerService.retrieveCustomer(customerID);
	}


}
