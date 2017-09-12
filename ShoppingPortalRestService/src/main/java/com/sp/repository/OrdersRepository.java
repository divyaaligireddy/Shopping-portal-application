package com.sp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RestResource;

import com.sp.dto.Orders;

@RestResource(path = "Orders", rel = "Orders")
public interface OrdersRepository extends CrudRepository<Orders, Integer> {


}
