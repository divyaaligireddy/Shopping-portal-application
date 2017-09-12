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

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;


@Entity
public class Customer implements Serializable {

	private static final long serialVersionUID = 4320032710327307416L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer customerID;
	private String name;
	private String email;
	private String street;
	private String city;
	private int zipcode;
	private String state;
	private String password;
	
	@OneToMany(mappedBy = "customerOrder", cascade = CascadeType.ALL)
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Orders> orders = new ArrayList<>();
	
	@OneToMany(mappedBy = "customerProduct", cascade = CascadeType.ALL)
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<CustomerProduct> customerProduct = new ArrayList<>();
	
	@OneToMany(mappedBy = "customerQuestionnaire", cascade = CascadeType.ALL)
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<ProductQuestionnaire> customerQuestionnaire = new ArrayList<>();

	@OneToMany(mappedBy = "customerCard", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<CardDetails> cards = new ArrayList<>();

	
	public Customer() {
		super();
	}

	public Customer(String name, String email, String street, String city, int zipcode, String state,
			String password) {
		super();
		this.name = name;
		this.email = email;
		this.street = street;
		this.city = city;
		this.zipcode = zipcode;
		this.state = state;
		this.password = password;
	}

	public Integer getCustomerID() {
		return customerID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public int getZipCode() {
		return zipcode;
	}

	public void setZipCode(int zipCode) {
		this.zipcode = zipCode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Override
	public String toString() {
		return "Customer [customerID=" + customerID + ", name=" + name + ", email=" + email + ", street=" + street
				+ ", city=" + city + ", zipcode=" + zipcode + ", state=" + state + ", password=" + password + "]";
	}

	/*public List<Orders> getOrders() {
		return orders;
	}

	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}

	public List<CardDetails> getCards() {
		return cards;
	}

	public void setCards(List<CardDetails> cards) {
		this.cards = cards;
	}*/

}
