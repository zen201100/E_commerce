package service;

import entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.CustomerRepository;

import java.util.List;
@Service(value = "customerService")
public class CustomerServiceImpl implements CustomerService{
    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public List<Customer> getAllCustomer() {
        return (List<Customer>) customerRepository.findAll();
    }

    @Override
    public Customer getCustomerByUserName(String username) {
        return (Customer) customerRepository.getCustomerByUserName(username);
    }

    @Override
    public void getRegistCustomer(Customer customer) {
        customerRepository.save(customer);
    }

}
