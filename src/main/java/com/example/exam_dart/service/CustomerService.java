package com.example.exam_dart.service;

import com.example.exam_dart.repository.CustomerRepository;
import com.example.exam_dart.entity.CustomerEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {
    private CustomerRepository customerRepository;

    @Autowired
    public CustomerService(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    public List<CustomerEntity> getAllCustomer(){
        return customerRepository.findAll();
    };

    public CustomerEntity createCustomer(CustomerEntity ctmE) {
        return customerRepository.save(ctmE);
    }
}
