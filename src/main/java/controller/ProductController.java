package controller;

import entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.CustomerService;
import service.ProductService;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private CustomerService customerService;

    @GetMapping(value = {"/","home"})
    public String getAllProduct(Model model){
        model.addAttribute("product",productService.getAllProduct());
        return "home";
    }

    @GetMapping(value = "registCustomer")
    public String getRegistCustomer(Model model){
        return "registcustomer";
    }

    @GetMapping(value = "login")
    public String getLogin(){
        return "login";
    }

    @GetMapping(value = "loginAccount")
    public String getLoginAccount(@RequestParam(name = "username") String username,
                                  @RequestParam(name = "password") String password,
                                  Model model){
        List<Customer> customers = customerService.getAllCustomer();
        for(Customer c:customers){
            if(username.equals(c.getUserName()) && password.equals(c.getPassword())){
                model.addAttribute("customer",customerService.getCustomerByUserName(username));
                return "customer";
            }
        }
        return "redirect:login";
    }
}
