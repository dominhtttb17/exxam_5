package com.example.exam_dart.controller;

import com.example.exam_dart.service.CustomerService;
import com.example.exam_dart.entity.CustomerEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/customers")
public class CustomerController {
    private CustomerService customerService;

    @Autowired
    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping
    public List<CustomerEntity> getAllCustomer(){
        return customerService.getAllCustomer();
    }

    @PostMapping
    public CustomerEntity createCustomer(@RequestBody CustomerEntity ctmE){
        return customerService.createCustomer(ctmE);
    }
}
