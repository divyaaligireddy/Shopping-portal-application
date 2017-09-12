package com.sp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RestResource;

import com.sp.dto.CardDetails;
import com.sp.dto.Payment;

@RestResource(path = "Payment", rel = "Payment")
public interface PaymentRepository extends CrudRepository<Payment, Integer> {

}
