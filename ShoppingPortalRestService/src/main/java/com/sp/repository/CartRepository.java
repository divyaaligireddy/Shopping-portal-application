package com.sp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RestResource;

import com.sp.dto.Cart;

@RestResource(path = "Cart", rel = "Cart")
public interface CartRepository extends CrudRepository<Cart, Integer> {

}
