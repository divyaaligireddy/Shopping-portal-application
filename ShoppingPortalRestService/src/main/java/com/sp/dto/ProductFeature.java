package com.sp.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ProductFeature {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int productFeatureID;
	private String feature;
	private int productID;

	public int getProductFeatureID() {
		return productFeatureID;
	}

	public void setProductFeatureID(int productFeatureID) {
		this.productFeatureID = productFeatureID;
	}

	public String getFeature() {
		return feature;
	}

	public void setFeature(String feature) {
		this.feature = feature;
	}

	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

}
