package com.sp.dto;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Orders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderID;
	private String orderStatus;
	// @Column(name="OrderDate")
	private Date orderDate;

	@ManyToOne
	@JoinColumn(name = "customerID")
	private Customer customerOrder;

	@OneToOne
	@JoinColumn(name = "paymentID")
	private Payment payment;

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Customer getCustomerOrder() {
		return customerOrder;
	}

	public void setCustomerOrder(Customer customerOrder) {
		this.customerOrder = customerOrder;
	}

	/*
	 * public int getPaymentID() { return paymentID; }
	 * 
	 * public void setPaymentID(int paymentID) { this.paymentID = paymentID; }
	 * 
	 * public int getCustomerID() { return customerID; }
	 * 
	 * public void setCustomerID(int customerID) { this.customerID = customerID; }
	 */
}
