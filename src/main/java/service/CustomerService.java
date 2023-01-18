package service;

import entity.Customer;

import java.util.List;

public interface CustomerService {
    public List<Customer> getAllCustomer();
    public void getUpdateCustomer(String userName,String fullname,String email,String phone,
                                      String address,String city,String district,String ward);
    public Customer getCustomerByUserName(String username);
    public void getChangePassword(String userName,String password);
    public void getRegistCustomer(Customer customer);
}
