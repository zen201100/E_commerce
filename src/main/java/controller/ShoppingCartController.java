package controller;

import entity.CartItem;
import entity.Product;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.HttpServletBean;
import org.springframework.web.util.CookieGenerator;
import service.*;

import java.net.CookieStore;
import java.util.Collection;
import java.util.List;

@Controller
public class ShoppingCartController {
    @Autowired
    private ProductService productService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private ProvidersService providersService;
    @Autowired
    private TypePhoneService typePhoneService;
    @Autowired
    private CapacityService capacityService;
    @Autowired
    private ShoppingCartService shoppingCartService;

    @GetMapping(value = "cart")
    public String cart(Model model){
        Collection<CartItem> cartItems = shoppingCartService.getCartItems();
        model.addAttribute("providers",providersService.PROVIDERS());
        model.addAttribute("typePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("caparity",capacityService.CAPACITIES());
        model.addAttribute("cartItem",cartItems);
        model.addAttribute("count",shoppingCartService.getCount());
        model.addAttribute("totalPrice",shoppingCartService.totalPrice());
        return "cart";
    }
    @GetMapping(value = "addItem")
    public String addItem(@RequestParam(name = "productID")int productID){
        List<Product> products=(List<Product>) productService.getAllProduct();
        for(Product p:products){
            if(productID == p.getId()){
                shoppingCartService.addCart(productID);
            }
        }
        return "redirect:cart";
    }
    @GetMapping(value = "removeItem")
    public String removeItem(@RequestParam(name = "productID")int productID){
        shoppingCartService.remove(productID);
        return "redirect:cart";
    }
    @GetMapping(value = "updateItem")
    public String updateItem(){
        return "redirect:cart";
    }
    @GetMapping(value = "clearItem")
    public String clearItem(){
        return "redirect:cart";
    }
}
