package com.sp.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.sp.dto.Customer;

@Component
public class CustomerService {

	private static List<Customer> customers = new ArrayList<>();
	
	static {
		customers.add(new Customer("Ram","ram@gmail.com","265 Buckhead", "Atlanta",30338, "GA","Y8RAM1"));
		customers.add(new Customer("Rohan","rohan@gmail.com","255 Lawrencevile", "Bangalore",30339,"KA","P8KAM1"));
		customers.add(new Customer("Yash","yash@gmail.com","465 Sandy Springs", "Atlanta",40338,"GA","YWAAM1"));
		customers.add(new Customer("Aishwarya","aish@gmail.com","965 Dunwoody", "Boston",30338,"MA","QW8AM1"));
	}
	
	public List<Customer> retrieveAllCustomers() {
		return customers;
	}
	
	public Customer retrieveCustomer(int customerID) {
		for(Customer cust: customers) {
			if (cust.getCustomerID() == customerID) {
				return cust;
			}
		}
		return null;
	}
}
