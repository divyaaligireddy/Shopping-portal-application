package com.sp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RestResource;

import com.sp.dto.CardDetails;

@RestResource(path = "CardDetails", rel = "CardDetails")
public interface CardDetailsRepository extends CrudRepository<CardDetails, Integer> {

}
