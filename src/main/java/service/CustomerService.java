package service;

import entity.Customer;

import java.util.List;

public interface CustomerService {
    public List<Customer> getAllCustomer();
    public Customer getCustomerByUserName(String username);
    public void getRegistCustomer(Customer customer);
}
