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
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;

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
    public String cart(Model model,@CookieValue(value = "cart",defaultValue = "") String nameProduct,
                       HttpSession session){

        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());
        model.addAttribute("cartItem",shoppingCartService.getCartItems());
        model.addAttribute("count",shoppingCartService.getCount());
        model.addAttribute("totalPrice",shoppingCartService.totalPrice());
//        Map<Integer,CartItem> cartItemMap=(Map<Integer, CartItem>) session.getAttribute("cart");
//        if(cartItemMap!=null){
//            model.addAttribute("cartItem",cartItemMap.values());
//        }

        return "cart";
    }
    @GetMapping(value = "addItem")
    public String addItem(@RequestParam(name = "productID")int productID,Model model,
                          HttpServletRequest request, HttpServletResponse response){

        shoppingCartService.addCart(productID);
        return "redirect:cart";
    }
    @GetMapping(value = "removeItem")
    public String removeItem(@RequestParam(name = "productID")int productID){
        shoppingCartService.remove(productID);
        return "redirect:cart";
    }

    @GetMapping(value = "updateItem")
    public String updateItem(Model model,@RequestParam(name = "productID") int productID,
                             @RequestParam(name = "quantity") int quantity){
        shoppingCartService.update(productID,quantity);
        return "redirect:cart";
    }

}
