package com.sp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RestResource;

import com.sp.dto.CustomerProduct;

@RestResource(path = "CustomerProduct", rel = "CustomerProduct")
public interface CustomerProductRepository extends CrudRepository<CustomerProduct, Integer> {

}
