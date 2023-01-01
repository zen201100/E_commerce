package service;

import entity.CartItem;
import entity.Product;

import java.util.Collection;
import java.util.List;

public interface ShoppingCartService {
    public List<CartItem> CART_ITEMS();
    public void addCart(int productID);
    public void remove(int productID);
    public Collection<CartItem> getCartItems();
    public void clear();
    public void update(int productID,int quantity);
    public int getSizeCart();
    public double totalPrice();
    public int getCount();
}
