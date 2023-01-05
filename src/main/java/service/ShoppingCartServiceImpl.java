package service;

import entity.Product;
import entity.CartItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
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
            exitedItem.setQuantity(exitedItem.getQuantity()+1);
        }
        else {
            CartItem cartItem = new CartItem();
//            cartItem.setName(product.getName());
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
        Product product =productService.getProductById(productID);
        CartItem cartItem = map.get(product.getId());
        if(cartItem.getQuantity()+quantity<=0){
            cartItem.setQuantity(1);
        }
        else if(cartItem.getQuantity()+quantity>product.getQuantity()){
            cartItem.setQuantity(product.getQuantity());
        }
        else {
            cartItem.setQuantity(cartItem.getQuantity()+quantity);
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

    @Override
    public CartItem item(int productID) {
        return (CartItem) cartItemRepository.findById(productID).get();
    }

}
