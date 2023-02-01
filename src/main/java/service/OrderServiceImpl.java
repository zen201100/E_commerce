package service;

import entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import repository.*;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service(value = "orderService")
public class OrderServiceImpl implements OrderService{

    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private TransportRepository transportRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private PaymentRepository paymentRepository;


    @Override
    public void getOrder(int customerID, double totalPrice, HashMap<Integer, CartItem> cartItems,
                         String name,String phone,String city,String district,String ward,String address,int pttt) {
        Customer customer = customerRepository.findById(customerID).get();

        Orders orders = new Orders();
        orders.setCustomer(customer);
        orders.setDate(LocalDate.now());
        orders.setTotalProduct(cartItems.size());
        orders.setTotalPrice(totalPrice);
        orderRepository.save(orders);


        Payment payment = new Payment();
        if(pttt == 1){
            payment.setOrders(orders);
            payment.setPaymentType("Thanh toán khi nhận hàng");
            payment.setAmount(totalPrice);
            paymentRepository.save(payment);
        }
        else if(pttt == 2){
            payment.setOrders(orders);
            payment.setPaymentType("Thanh toán online");
            payment.setAmount(totalPrice);
            paymentRepository.save(payment);

            customer.setMoney(customer.getMoney()-totalPrice);
            customerRepository.save(customer);

        }


        Transport transport = new Transport();
        transport.setOrders(orders);
        transport.setName(name);
        transport.setPhone(phone);
        transport.setAddress(address);
        transport.setCity(city);
        transport.setDistrict(district);
        transport.setWard(ward);
        transportRepository.save(transport);


        List<Product> products = (List<Product>) productRepository.findAll();
        for(Product p:products) {
            for (Map.Entry<Integer,CartItem> list : cartItems.entrySet()){
                if(p.getId() == list.getValue().getProduct().getId()){
                    OrderDetails orderDetails = new OrderDetails();
                    orderDetails.setOrders(orders);
                    orderDetails.setProduct(p);
                    orderDetails.setQuantity(list.getValue().getQuantity());
                    orderDetails.setUnitPrice(list.getValue().getUnitPrice());
                    orderDetailRepository.save(orderDetails);

//                    p.setQuantity(p.getQuantity() - list.getValue().getQuantity());
                    p.setProductSale(p.getProductSale() + list.getValue().getQuantity());
                    productRepository.save(p);

                }

            }
        }
    }


    @Override
    public Payment getPaymentByOrderID(int orderID) {
        return paymentRepository.getPaymentByOrderID(orderID) ;
    }

    @Override
    public Page<Orders> getOrdersByCustomerID(int customerID, Pageable pageable){
        return (Page<Orders>) orderRepository.getOrdersByCustomerID(customerID,pageable);
    }

    @Override
    public List<Orders> getListOrderByCustomerID(int customerID) {
        return (List<Orders>) orderRepository.getListOrderByCustomerID(customerID);
    }

    @Override
    public List<OrderDetails> getOrderDetailByID(int orderID){
        return (List<OrderDetails>) orderDetailRepository.getOrderDetailByID(orderID);
    }

    @Override
    public Transport getTransportByOrderID(int orderID) {
        return transportRepository.getTransportByOrderID(orderID);
    }


}
