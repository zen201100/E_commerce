package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import service.ProductService;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;

    @GetMapping(value = {"/","home"})
    public String getAllProduct(Model model){
        model.addAttribute("product",productService.getAllProduct());
        return "home";
    }

    @GetMapping(value = "registCustomer")
    public String getRegistCustomer(Model model){
        return "registcustomer";
    }
}
