package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.OrderService;

import javax.servlet.http.HttpSession;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping(value = "inforOrder")
    public String getInforOrder(HttpSession session, @RequestParam(name = "customerID",defaultValue = "0") int customerID,
                                @RequestParam(name = "totalPrice",defaultValue = "0") double totalPrice){

        if (session.getAttribute("customer") == null){
            return "redirect:login";
        }
        else {
            orderService.getOrder(customerID,totalPrice);
            session.removeAttribute("myCartItems");
            session.removeAttribute("myCartNum");
            session.removeAttribute("myCartTotal");
            return "redirect:myAccount";
        }
    }
}
