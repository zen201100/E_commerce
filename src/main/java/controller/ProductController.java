package controller;

import entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
        model.addAttribute("customer",new Customer());
        return "registcustomer";
    }

    @GetMapping(value = "login")
    public String getLogin(Model model){
        model.addAttribute("customer",new Customer());
        return "login";
    }

    @GetMapping(value = "account")
    public String getLoginAccount(@ModelAttribute Customer customer, Model model){
        List<Customer> customers = customerService.getAllCustomer();
        for(Customer c:customers){
            if(customer.getUserName().equals(c.getUserName()) && customer.getPassword().equals(c.getPassword())){
                model.addAttribute("product",productService.getAllProduct());
                model.addAttribute("customer",customerService.getCustomerByUserName(customer.getUserName()));
                return "customer";
            }
        }
        return "redirect:login";
    }
}
