package com.sp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.dto.CardDetails;
import com.sp.dto.Cart;
import com.sp.dto.Customer;
import com.sp.dto.CustomerProduct;
import com.sp.dto.Orders;
import com.sp.dto.Payment;
import com.sp.dto.ProductQuestionnaire;
import com.sp.repository.CardDetailsRepository;
import com.sp.repository.CartRepository;
import com.sp.repository.CustomerProductRepository;
import com.sp.repository.CustomerRepository;
import com.sp.repository.OrdersRepository;
import com.sp.repository.PaymentRepository;
import com.sp.repository.ProductQuestionnaireRepository;

@Controller
@RequestMapping(path = "/shoppingportal")
public class ShoppingPortalController {

	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private OrdersRepository ordersRepository;
	
	@Autowired
	private CardDetailsRepository cardDetailsRepository;
	
	@Autowired
	private CartRepository cartRepository;

	@Autowired
	private PaymentRepository paymentRepository;
	
	@Autowired
	private CustomerProductRepository customerProductRepository;
	
	@Autowired
	private ProductQuestionnaireRepository productQuestionnaireRepository;
	
	@RequestMapping("/customers/{customerID}")
	public @ResponseBody Customer getCustomer(@PathVariable Integer customerID) {
		Customer findOne = customerRepository.findOne(customerID);
		System.out.println(findOne.getName());
		return findOne;
	}

	@GetMapping(path = "/customers")
	public @ResponseBody Iterable<Customer> getAllCustomers() {
		return customerRepository.findAll();
	}
	
	@GetMapping(path = "/orders")
	public @ResponseBody Iterable<Orders> getAllOrders() {
		return ordersRepository.findAll();
	}
	
	@GetMapping(path = "/cardDetails")
	public @ResponseBody Iterable<CardDetails> getAllCards() {
		return cardDetailsRepository.findAll();
	}
	
	@GetMapping(path = "/cart")
	public @ResponseBody Iterable<Cart> getAllCarts() {
		return cartRepository.findAll();
	}
	
	@GetMapping(path = "/payment")
	public @ResponseBody Iterable<Payment> getAllPayments() {
		return paymentRepository.findAll();
	}
	
	@GetMapping(path = "/customerProduct")
	public @ResponseBody Iterable<CustomerProduct> getAllCustomerProduct() {
		return customerProductRepository.findAll();
	}
	
	@GetMapping(path = "/productQuestionnaire")
	public @ResponseBody Iterable<ProductQuestionnaire> getAllProductQuestionnaire() {
		return productQuestionnaireRepository.findAll();
	}
}
