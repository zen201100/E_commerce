package service;

import entity.Product;
import entity.CartItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.util.CookieGenerator;
import repository.CartItemRepository;

import java.util.*;

@Service(value = "shoppingCartService")
public class ShoppingCartServiceImpl implements ShoppingCartService{
    private Map<Integer, CartItem> map = new HashMap<Integer, CartItem>();
    @Autowired
    private CartItemRepository cartItemRepository;
    @Autowired
    private ProductService productService;

    @Override
    public List<CartItem> CART_ITEMS() {
        return (List<CartItem>) cartItemRepository.findAll();
    }

    @Override
    public void addCart(int productID){
        Product product = productService.getProductById(productID);
        int quantity= 1;
        CartItem exitedItem = map.get(productID);
        if(exitedItem!=null){
            CartItem cartItem = new CartItem();
            exitedItem.setQuantity(exitedItem.getQuantity()+1);
        }
        else {
            CartItem cartItem = new CartItem();
            cartItem.setQuantity(quantity);
            cartItem.setProduct(product);
            map.put(product.getId(),cartItem);
        }

    }
    public void remove(int productID){
        map.remove(productID);
    }
    public Collection<CartItem> getCartItems(){

        return map.values();
    }
    public void clear(){
        map.clear();
    }


    public void update(int productID,int quantity){
        CartItem cartItem = map.get(productID);
        cartItem.setQuantity(quantity+cartItem.getQuantity());
        if(cartItem.getQuantity()<=0){
            map.remove(productID);
        }
    }
    public int getSizeCart(){
        return map.size() ;
    }
    public double totalPrice(){
        Collection<CartItem> cartItems = map.values();
        double amout = 0;
        for(CartItem c : cartItems){
            amout = amout + (c.getProduct().getPrice().getUnitPrice())*c.getQuantity();
        }
        return amout;
    }
    public int getCount(){
        int quantity =0;
        Collection<CartItem> cartItems = map.values();
        for(CartItem c : cartItems){
            quantity = quantity + c.getQuantity();
        }
        return quantity;
    }

}
