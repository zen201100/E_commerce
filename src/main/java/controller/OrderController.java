package controller;

import entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import repository.CustomerRepository;
import service.*;

import javax.servlet.http.HttpSession;
import java.text.NumberFormat;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.*;

@Controller
public class OrderController {

    @Autowired
    private ProvidersService providersService;
    @Autowired
    private TypePhoneService typePhoneService;
    @Autowired
    private CapacityService capacityService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private ShoppingCartService shoppingCartService;
    @Autowired
    private CustomerRepository customerRepository;


    @PostMapping(value = "inforOrder")
    public String getInforOrder(HttpSession session, Model model,@RequestParam(name = "name") String name,
                                @RequestParam(name = "phone") String phone,@RequestParam(name ="city") String city,
                                @RequestParam(name = "district") String district,@RequestParam(name = "ward") String ward,
                                @RequestParam(name = "address") String address,@RequestParam(name = "pttt") int pttt,
                                @RequestParam(name = "password",required = false) String password){

        if (session.getAttribute("customer") == null){
            return "redirect:login";
        }


        else {
            if(name.length() == 0){
                return "redirect:cart";
            }
            else  if (phone.length() == 0){
                return "redirect:cart";
            }
            else  if (city.length() == 0){
                return "redirect:cart";
            }
            else  if (district.length() == 0){
                return "redirect:cart";
            }
            else  if (ward.length() == 0){
                return "redirect:cart";
            }
            else  if (address.length() == 0){
                return "redirect:cart";
            }
            else {
                HashMap<Integer, CartItem> cartItems = (HashMap<Integer, CartItem>) session.getAttribute(("myCartItems"));
                Customer customer = (Customer) session.getAttribute("customer");
                if(pttt == 1){
                    orderService.getOrder(customer.getId(),shoppingCartService.totalPrice(cartItems),cartItems,
                            name,phone,city,district,ward,address,pttt);
                    session.removeAttribute("myCartItems");
                    session.removeAttribute("myCartNum");
                    session.removeAttribute("myCartTotal");
                    return "redirect:orderHistory";
                }
                if(pttt == 2){
                    if(customer.getPassword().equals(password) &&
                            customer.getMoney() >= shoppingCartService.totalPrice(cartItems)){
                        orderService.getOrder(customer.getId(),shoppingCartService.totalPrice(cartItems),cartItems,
                                name,phone,city,district,ward,address,pttt);
                        session.setAttribute("customer",customerRepository.getCustomerByUserName(customer.getUserName()));

                        session.removeAttribute("myCartItems");
                        session.removeAttribute("myCartNum");
                        session.removeAttribute("myCartTotal");
                        return "redirect:orderHistory";

                    }
                }
                return "redirect:cart";
            }
        }
    }


    @GetMapping(value = "orderHistory")
    public String getOrderHistory(Model model,HttpSession session,@RequestParam(name = "page") Optional<Integer> page){
        if(session.getAttribute("customer")==null){
            return "redirect:login";
        }
        else {
            Locale localeVN = new Locale("vi", "VN");
            NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(localeVN);
            model.addAttribute("currencyFormat",currencyFormat);

            model.addAttribute("listProviders",providersService.PROVIDERS());
            model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
            model.addAttribute("listCaparity",capacityService.CAPACITIES());


            Customer customer = (Customer) session.getAttribute("customer");

            Page<Orders> orders = orderService.getOrdersByCustomerID(customer.getId(),PageRequest.of(page.orElse(0),8));
            model.addAttribute("orders",orders);
            return "orderhistory";
        }

    }

    @GetMapping(value = "orderDetail")
    public String getOrderDetail(Model model,HttpSession session,@RequestParam(name = "orderID") int orderID){
        if(session.getAttribute("customer")==null){
            return "redirect:login";
        }
        else {
            Locale localeVN = new Locale("vi", "VN");
            NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(localeVN);
            model.addAttribute("currencyFormat",currencyFormat);

            model.addAttribute("listProviders",providersService.PROVIDERS());
            model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
            model.addAttribute("listCaparity",capacityService.CAPACITIES());

            Customer customer = (Customer) session.getAttribute("customer");
            List<Orders> orders = (List<Orders>) orderService.getListOrderByCustomerID(customer.getId());

            for (Orders o : orders){
                if(o.getId() == orderID){
                    model.addAttribute("orderDetail",orderService.getOrderDetailByID(orderID));
                    model.addAttribute("transport",orderService.getTransportByOrderID(orderID));
                    model.addAttribute("payment",orderService.getPaymentByOrderID(orderID));
                    return "orderdetail";
                }
            }

            return "redirect:orderHistory";

        }

    }




}
