package com.sp.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CustomerProduct {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int customerProductID;
	private int rating;
	private String headline;
	private String review;
	
	@ManyToOne
	@JoinColumn(name = "customerID")
	private Customer customerProduct;
	
	@ManyToOne
	@JoinColumn(name = "productID")
	private Product product;

	public int getCustomerProductID() {
		return customerProductID;
	}

	public void setCustomerProductID(int customerProductID) {
		this.customerProductID = customerProductID;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getHeadline() {
		return headline;
	}

	public void setHeadline(String headline) {
		this.headline = headline;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public Customer getCustomerProduct() {
		return customerProduct;
	}

	public void setCustomerProduct(Customer customerProduct) {
		this.customerProduct = customerProduct;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
