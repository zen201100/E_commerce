package service;

import entity.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.HashMap;
import java.util.List;

public interface OrderService {
    public void getOrder(int customerID, double totalPrice, HashMap<Integer, CartItem> cartItems,
                         String name,String phone,String city,String district,String ward,String address,int pttt);

    public Page<Orders> getOrdersByCustomerID(int customerID, Pageable pageable);

    public List<Orders> getListOrderByCustomerID(int customerID);

    public List<OrderDetails> getOrderDetailByID(int orderID);

    public Transport getTransportByOrderID(int orderID);
}
