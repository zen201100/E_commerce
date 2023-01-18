package service;

import entity.Customer;
import entity.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.CustomerRepository;
import repository.OrderRepository;

import java.time.LocalDate;

@Service(value = "orderService")
public class OrderServiceImpl implements OrderService{
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public void getOrder(int customerID, double totalPrice) {
        Customer customer = customerRepository.findById(customerID).get();
        Orders orders = new Orders();
        orders.setCustomer(customer);
        orders.setDate(LocalDate.now());
        orders.setTotalPrice(totalPrice);
        orderRepository.save(orders);
    }
}
