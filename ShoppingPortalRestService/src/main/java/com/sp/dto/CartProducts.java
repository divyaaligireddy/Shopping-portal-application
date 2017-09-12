package com.sp.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CartProducts {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cartProductsID;
	private int cartID;
	private int productID;
	private int numberOfUnits;

	public int getCartProductsID() {
		return cartProductsID;
	}

	public void setCartProductsID(int cartProductsID) {
		this.cartProductsID = cartProductsID;
	}

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
	}

	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

	public int getNumberOfUnits() {
		return numberOfUnits;
	}

	public void setNumberOfUnits(int numberOfUnits) {
		this.numberOfUnits = numberOfUnits;
	}

}
