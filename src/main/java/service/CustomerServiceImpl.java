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
    public void getUpdateCustomer(String userName, String fullname, String email, String phone,
                                  String address, String city, String district, String ward) {
        Customer customer = customerRepository.getCustomerByUserName(userName);
        customer.setFullName(fullname.trim());
        customer.setEmail(email);
        customer.setPhone(phone);
        customer.setAddress(address);
        customer.setCity(city);
        customer.setDistrict(district);
        customer.setWard(ward);

        customerRepository.save(customer);
    }


    @Override
    public Customer getCustomerByUserName(String username) {
        return (Customer) customerRepository.getCustomerByUserName(username);
    }

    @Override
    public void getChangePassword(String userName, String password) {
        Customer customer = customerRepository.getCustomerByUserName(userName);
        customer.setPassword(password);
        customerRepository.save(customer);
    }

    @Override
    public void getRegistCustomer(Customer customer) {
        String fullname = customer.getFullName().trim();
        customer.setFullName(fullname);
        customer.setRole("user");
        customerRepository.save(customer);
    }

}
