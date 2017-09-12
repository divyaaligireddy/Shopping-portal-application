package com.sp.dto;
import java.math.BigInteger;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class CardDetails {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cardDetailId;
	private String cardType;
	private BigInteger cardNumber;
	private Date expiryDate;
	private int securityCode;
	private String firstName;
	private String lastName;
	private String phone;
	private String email;
	private String companyName;
	private String street;
	private int apartmentNumber;
	private int zipCode;
	
	@ManyToOne
	@JoinColumn(name="customerID")
	private Customer customerCard;
	
	@OneToMany(mappedBy = "cardDetail", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Payment> payment = new ArrayList<>();


	public int getCardDetailId() {
		return cardDetailId;
	}

	public void setCardDetailId(int cardDetailId) {
		this.cardDetailId = cardDetailId;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public BigInteger getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(BigInteger cardNumber) {
		this.cardNumber = cardNumber;
	}

	public Date getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}

	public int getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(int securityCode) {
		this.securityCode = securityCode;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public int getApartmentNumber() {
		return apartmentNumber;
	}

	public void setApartmentNumber(int apartmentNumber) {
		this.apartmentNumber = apartmentNumber;
	}

	public int getZipCode() {
		return zipCode;
	}

	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}

	public Customer getCustomerCard() {
		return customerCard;
	}

	public void setCustomerCard(Customer customer) {
		this.customerCard = customer;
	}

}
