package com.sp.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class ProductQuestionnaire {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int customerProductID;
	private String question;
	private String answer;

	@ManyToOne
	@JoinColumn(name = "customerID")
	private Customer customerQuestionnaire;

	@ManyToOne
	@JoinColumn(name = "productID")
	private Product productQuestionnaire;

	public int getCustomerProductID() {
		return customerProductID;
	}

	public void setCustomerProductID(int customerProductID) {
		this.customerProductID = customerProductID;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Customer getCustomerQuestionnaire() {
		return customerQuestionnaire;
	}

	public void setCustomerQuestionnaire(Customer customerQuestionnaire) {
		this.customerQuestionnaire = customerQuestionnaire;
	}

	public Product getProductQuestionnaire() {
		return productQuestionnaire;
	}

	public void setProductQuestionnaire(Product productQuestionnaire) {
		this.productQuestionnaire = productQuestionnaire;
	}

}
