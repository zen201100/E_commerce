package controller;

import entity.Customer;
import entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.CapacityService;
import service.CustomerService;
import service.ProductService;

import java.util.List;
import java.util.Optional;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private CapacityService capacityService;

    @GetMapping(value = {"/","home"})
    public String paginate(@RequestParam(name = "page",defaultValue = "0") Optional<Integer> page, Model model){

        Page<Product> productPage = productService.getPageProduct(PageRequest.of(page.orElse(0),8));
        model.addAttribute("productPage",productPage);
        return "home";
    }

    @GetMapping(value = "searchProduct")
    public String getSearchProduct(@RequestParam(name = "page",defaultValue = "0")Optional<Integer> page,
                                   @RequestParam(name = "searchproduct",required = false) String searchproduct, Model model) {
        List<Product> products = productService.getAllProduct();
        for (Product p : products) {
            Page<Product> productPage = productService.getPageProductByName(searchproduct, PageRequest.of(page.orElse(0), 8));
            model.addAttribute("searchproduct",searchproduct);
            model.addAttribute("productPage", productPage);
        }
        return "searchproduct";
    }

    @GetMapping(value = "productDetails")
    public String getProductDetails(@RequestParam(name = "id") int id,Model model){
        model.addAttribute("productDetails",productService.getProductById(id));

        return "productdetails";
    }

    @GetMapping(value = "registCustomer")
    public String getRegistCustomer(Model model){
        model.addAttribute("customer",new Customer());
        return "registcustomer";
    }

    @PostMapping(value = "registAccount")
    public String getRegistAccount(@ModelAttribute Customer customer,
                                   @RequestParam(name = "passWord") String passWord){
        if(customer.getPassword().equals(passWord)){
            customerService.getRegistCustomer(customer);
            return "redirect:login";
        }
        return "redirect:registCustomer";
    }

    @GetMapping(value = "login")
    public String getLogin(Model model){
        model.addAttribute("customer",new Customer());
        return "login";
    }

    @GetMapping(value = "account")
    public String getLoginAccount(@ModelAttribute Customer customer,
                                  @RequestParam(name = "page",defaultValue = "0") Optional<Integer> page,
                                  Model model){
        List<Customer> customers = customerService.getAllCustomer();
        Page<Product> productPage = productService.getPageProduct(PageRequest.of(page.orElse(0),8));
        for(Customer c:customers){
            if(customer.getUserName().equals(c.getUserName()) && customer.getPassword().equals(c.getPassword())){
                model.addAttribute("productPage",productPage);
                model.addAttribute("customer",customerService.getCustomerByUserName(customer.getUserName()));
                return "customer";
            }
        }
        return "redirect:login";
    }
}
