package com.icinbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icinbank.model.Customer;
import com.icinbank.repository.CustomerRepository;

@Service(value = "customerService")
public class CustomerServiceImpl implements CustomerService {
   
	@Autowired
    private CustomerRepository customerRepository;
    @Override
    @Transactional
    public List<Customer> getCustomers() {
        return customerRepository.getCustomers();
    }
    
    @Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {

		customerRepository.saveCustomer(theCustomer);
	}

	@Override
	@Transactional
	public Customer getCustomer(int theId) {
		
		return customerRepository.getCustomer(theId);
	}

	/*
	 * @Override
	 * 
	 * @Transactional public void deleteCustomer(int theId) {
	 * 
	 * customerRepository.deleteCustomer(theId); }
	 */


}

