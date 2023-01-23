package service;

import entity.CartItem;
import entity.Product;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;

public interface ShoppingCartService {

    public double totalPrice(HashMap<Integer,CartItem> cartItems);
}
