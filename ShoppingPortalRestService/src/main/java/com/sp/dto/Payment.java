package com.sp.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Payment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int paymentID;
	private String status;

	@ManyToOne
	@JoinColumn(name = "cardDetailId")
	private CardDetails cardDetail;

	@ManyToOne
	@JoinColumn(name = "cartID")
	private Cart cart;

	public int getPaymentID() {
		return paymentID;
	}

	public void setPaymentID(int paymentID) {
		this.paymentID = paymentID;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public CardDetails getCardDetail() {
		return cardDetail;
	}

	public void setCardDetail(CardDetails cardDetail) {
		this.cardDetail = cardDetail;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

}
