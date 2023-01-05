package controller;

import entity.Customer;
import entity.Product;
import entity.Providers;
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
import org.springframework.web.bind.support.SessionAttributeStore;
import service.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Optional;
import java.util.OptionalInt;

@Controller
public class ProductController {
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

    @GetMapping(value = {"/","home"})
    public String getHome(Model model){
        Page<Product> productPage = productService.getPageProduct(PageRequest.of(0,8));
        model.addAttribute("count",shoppingCartService.getCount());
        model.addAttribute("providers",providersService.PROVIDERS());
        model.addAttribute("typePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("caparity",capacityService.CAPACITIES());
        model.addAttribute("productPage",productPage);
        return "home";
    }

    @GetMapping(value = "product")
    public String getProduct(@RequestParam(name = "page") Optional<Integer> page, Model model){

        Page<Product> productPage = productService.getPageProduct(PageRequest.of(page.orElse(0),8));
        model.addAttribute("count",shoppingCartService.getCount());
        model.addAttribute("productPage",productPage);
        model.addAttribute("providers",providersService.PROVIDERS());
        model.addAttribute("typePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("caparity",capacityService.CAPACITIES());
        model.addAttribute("sizeProduct",productService.getAllProduct().size());
        return "product";
    }

    @GetMapping(value = "providers")
    public String getProviders(@RequestParam(name = "page") Optional<Integer> page,
                               @RequestParam(name = "providerName",required = false) String providerName,
                               Model model){

        Page<Product> providerPage = productService.getPageProviderName(providerName,PageRequest.of(0,8));
        model.addAttribute("count",shoppingCartService.getCount());
        model.addAttribute("providerPage",providerPage);
        model.addAttribute("providers",providersService.PROVIDERS());
        model.addAttribute("typePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("caparity",capacityService.CAPACITIES());
        model.addAttribute("sizeProduct",productService.getAllProduct().size());
        return "providers";
    }

    @GetMapping(value = "searchProduct")
    public String getSearchProduct(@RequestParam(name = "page",defaultValue = "0")Optional<Integer> page,
                                   @RequestParam(name = "searchproduct",required = false) String searchproduct, Model model) {

        Page<Product> productPage = productService.getPageProductByName(searchproduct, PageRequest.of(page.orElse(0), 8));
        model.addAttribute("count",shoppingCartService.getCount());
        model.addAttribute("providers",providersService.PROVIDERS());
        model.addAttribute("typePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("caparity",capacityService.CAPACITIES());
        model.addAttribute("searchproduct",searchproduct);
        model.addAttribute("productPage", productPage);
        model.addAttribute("sizeSearchProduct", productService.getSizeProductByName(searchproduct).size());
        return "searchproduct";
    }

    @GetMapping(value = "productDetails")
    public String getProductDetails(@RequestParam(name = "id") int id,Model model){

        model.addAttribute("productDetails",productService.getProductById(id));
        model.addAttribute("count",shoppingCartService.getCount());
        model.addAttribute("providers",providersService.PROVIDERS());
        model.addAttribute("typePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("caparity",capacityService.CAPACITIES());
        return "productdetails";
    }

    @GetMapping(value = "registCustomer")
    public String getRegistCustomer(Model model){
        model.addAttribute("customer",new Customer());
        model.addAttribute("count",shoppingCartService.getCount());
        model.addAttribute("providers",providersService.PROVIDERS());
        model.addAttribute("typePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("caparity",capacityService.CAPACITIES());
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
        model.addAttribute("count",shoppingCartService.getCount());
        model.addAttribute("providers",providersService.PROVIDERS());
        model.addAttribute("typePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("caparity",capacityService.CAPACITIES());
        model.addAttribute("customer",new Customer());
        return "login";
    }
    @GetMapping(value = "homeaccount")
    public String getHomeAccount(@RequestParam(name = "userName") String userName,
                                 @RequestParam(name = "password") String password,
                                 Model model){
        model.addAttribute(userName);
        model.addAttribute(password);
        return "redirect:account";
    }

    @PostMapping (value = "account")
    public String getLoginAccount(@ModelAttribute Customer customer,
                                  @RequestParam(name = "page") Optional<Integer> page,
                                  Model model){
        List<Customer> customers = customerService.getAllCustomer();
        Page<Product> productPage = productService.getPageProduct(PageRequest.of(page.orElse(0),4));
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
