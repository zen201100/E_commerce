package controller;

import entity.CartItem;
import entity.Product;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionAttributeStore;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.server.session.CookieWebSessionIdResolver;
import org.springframework.web.servlet.HttpServletBean;
import org.springframework.web.util.CookieGenerator;
import service.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.CookieStore;
import java.util.*;

@Controller
public class ShoppingCartController {
    @Autowired
    private ProductService productService;
    @Autowired
    private ProvidersService providersService;
    @Autowired
    private TypePhoneService typePhoneService;
    @Autowired
    private CapacityService capacityService;
    @Autowired
    private ShoppingCartService shoppingCartService;

    @GetMapping(value = "cart")
    public String cart(Model model,@CookieValue(value = "cart",defaultValue = "") String nameProduct){
        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());

        return "cart";
    }
    @GetMapping(value = "addItem")
    public String addItem(HttpSession session, @RequestParam(name = "productID")int productID, Model model){
        HashMap<Integer,CartItem> cartItems = (HashMap<Integer, CartItem>) session.getAttribute(("myCartItems"));
        if(cartItems==null){
            cartItems = new HashMap<>();
        }
        Product product=productService.getProductById(productID);
        if(product!=null){
            if(cartItems.containsKey(productID)){
                CartItem item = cartItems.get(productID);
                item.setProduct(product);
                item.setQuantity(item.getQuantity()+1);
                cartItems.put(productID,item);
            }
            else {
                CartItem item = new CartItem();
                item.setProduct(product);
                item.setQuantity(1);
                cartItems.put(productID,item);
            }
        }
        session.setAttribute("myCartItems",cartItems);
        session.setAttribute("myCartNum",cartItems.size());
        session.setAttribute("myCartTotal",totalPrice(cartItems));
        return "redirect:cart";
    }
    @GetMapping(value = "removeItem")
    public String removeItem(HttpSession session,@RequestParam(name = "productID")int productID){
        HashMap<Integer,CartItem> cartItems = (HashMap<Integer, CartItem>) session.getAttribute(("myCartItems"));
        if(cartItems == null){
            cartItems = new HashMap<>();
        }
        Product product=productService.getProductById(productID);
        if (cartItems.containsKey(productID)){
            cartItems.remove(productID);
        }
        session.setAttribute("myCartItems",cartItems);
        session.setAttribute("myCartNum",cartItems.size());
        session.setAttribute("myCartTotal",totalPrice(cartItems));
        return "redirect:cart";
    }

    @GetMapping(value = "updateItem")
    public String updateItem(Model model,HttpSession session,@RequestParam(name = "productID") int productID,
                             @RequestParam(name = "quantity") int quantity){
        HashMap<Integer,CartItem> cartItems = (HashMap<Integer, CartItem>) session.getAttribute(("myCartItems"));
        Product product=productService.getProductById(productID);
        if(product !=null){
            if (cartItems.containsKey(productID)){
                CartItem item = cartItems.get(productID);
                if (quantity+item.getQuantity()>=product.getQuantity()){
                    item.setQuantity(product.getQuantity());
                }
                else if (quantity+item.getQuantity()<=1){
                    item.setQuantity(1);
                }
                else {
                    item.setQuantity(item.getQuantity()+quantity);
                }
            }
        }

        session.setAttribute("myCartItems",cartItems);
        session.setAttribute("myCartNum",cartItems.size());
        session.setAttribute("myCartTotal",totalPrice(cartItems));
        return "redirect:cart";
    }

    public double totalPrice(HashMap<Integer,CartItem> cartItems){
        int count =0;
        for (Map.Entry<Integer,CartItem> list : cartItems.entrySet()){
            count += list.getValue().getProduct().getPrice() * list.getValue().getQuantity();
        }
        return count;
    }
}
