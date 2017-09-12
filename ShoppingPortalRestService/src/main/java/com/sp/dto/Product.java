package com.sp.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Product implements Serializable {

	private static final long serialVersionUID = -7067794916986521550L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int productID;
	private String productName;
	private float price_inDollars;
	private int discount_inDollars;
	private String productSize_inPounds;
	private String dimensions_inInches;
	private String shippingWeight_inPounds;
	private String modelNumber;
	private String description;
	private String image;
	private String manufacturer;
	
	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	private List<CustomerProduct> customerProduct = new ArrayList<>();

	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public float getPrice_inDollars() {
		return price_inDollars;
	}

	public void setPrice_inDollars(float price_inDollars) {
		this.price_inDollars = price_inDollars;
	}

	public int getDiscount_inDollars() {
		return discount_inDollars;
	}

	public void setDiscount_inDollars(int discount_inDollars) {
		this.discount_inDollars = discount_inDollars;
	}

	public String getProductSize_inPounds() {
		return productSize_inPounds;
	}

	public void setProductSize_inPounds(String productSize_inPounds) {
		this.productSize_inPounds = productSize_inPounds;
	}

	public String getDimensions_inInches() {
		return dimensions_inInches;
	}

	public void setDimensions_inInches(String dimensions_inInches) {
		this.dimensions_inInches = dimensions_inInches;
	}

	public String getShippingWeight_inPounds() {
		return shippingWeight_inPounds;
	}

	public void setShippingWeight_inPounds(String shippingWeight_inPounds) {
		this.shippingWeight_inPounds = shippingWeight_inPounds;
	}

	public String getModelNumber() {
		return modelNumber;
	}

	public void setModelNumber(String modelNumber) {
		this.modelNumber = modelNumber;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public void setCustomerProduct(List<CustomerProduct> customerProduct) {
		this.customerProduct = customerProduct;
	}

}
