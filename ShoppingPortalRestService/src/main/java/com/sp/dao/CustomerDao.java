package com.sp.dao;

import java.util.List;

import com.sp.dto.Customer;

public interface CustomerDao {

	public Customer findByCustomerID(int customerID);

	public List<Customer> findAllCustomers();

}
