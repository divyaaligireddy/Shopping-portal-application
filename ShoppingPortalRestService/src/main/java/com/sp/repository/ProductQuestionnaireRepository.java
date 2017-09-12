package com.sp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RestResource;

import com.sp.dto.ProductQuestionnaire;

@RestResource(path = "ProductQuestionnaire", rel = "ProductQuestionnaire")
public interface ProductQuestionnaireRepository extends CrudRepository<ProductQuestionnaire, Integer> {

}
