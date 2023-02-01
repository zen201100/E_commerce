package controller;

import entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.*;

import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import java.util.Optional;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private ProvidersService providersService;
    @Autowired
    private TypePhoneService typePhoneService;
    @Autowired
    private CapacityService capacityService;


    @GetMapping(value = {"/","home"})
    public String getHome(Model model){
        Page<Product> productPage = productService.getPageProduct(PageRequest.of(0,8));

        List<Product> productSale = productService.getProductSale();

        List<Product> promotions = productService.getListPromotion();

        Locale localeVN = new Locale("vi", "VN");
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(localeVN);
        model.addAttribute("currencyFormat",currencyFormat);

        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());

        model.addAttribute("promotions",promotions);
        model.addAttribute("productSale",productSale);
        model.addAttribute("productPage",productPage);

        return "home";
    }

    @GetMapping(value = "product")
    public String getProduct(@RequestParam(name = "page") Optional<Integer> page, Model model){

        Locale localeVN = new Locale("vi", "VN");
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(localeVN);
        model.addAttribute("currencyFormat",currencyFormat);

        Page<Product> productPage = productService.getPageProduct(PageRequest.of(page.orElse(0),8));
        model.addAttribute("productPage",productPage);
        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());
        model.addAttribute("sizeProduct",productService.getAllProduct().size());
        return "product";
    }

    @GetMapping(value = "providers")
    public String getProviders(@RequestParam(name = "page") Optional<Integer> page,
                               @RequestParam(name = "providerName",required = false) String providerName,
                               Model model){

        Locale localeVN = new Locale("vi", "VN");
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(localeVN);
        model.addAttribute("currencyFormat",currencyFormat);

        Page<Product> productPage = productService.findProductByProviders_ProviderName(providerName,PageRequest.of(page.orElse(0),8));
        model.addAttribute("productPage",productPage);
        model.addAttribute("providerName",providerName);
        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());
        model.addAttribute("sizeProviders",productService.getSizeProviders(providerName).size());
        return "providers";
    }

    @GetMapping(value = "typephone")
    public String getTypePhone(@RequestParam(name = "page") Optional<Integer> page,
                               @RequestParam(name = "typePhone",required = false) String typePhone,
                               Model model){

        Locale localeVN = new Locale("vi", "VN");
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(localeVN);
        model.addAttribute("currencyFormat",currencyFormat);

        Page<Product> productPage = productService.findProductByTypePhone_TypePhone(typePhone,PageRequest.of(page.orElse(0),8));
        model.addAttribute("productPage",productPage);
        model.addAttribute("typePhone",typePhone);
        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());
        model.addAttribute("sizeTypePhone",productService.getSizeTypePhone(typePhone).size());
        return "typephone";
    }

    @GetMapping(value = "capacity")
    public String getCapacity(@RequestParam(name = "page") Optional<Integer> page,
                               @RequestParam(name = "capacity",required = false) String capacity,
                              Model model){

        Locale localeVN = new Locale("vi", "VN");
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(localeVN);
        model.addAttribute("currencyFormat",currencyFormat);

        Page<Product> productPage = productService.findProductByCapacity_Capacity(capacity,PageRequest.of(page.orElse(0),8));
        model.addAttribute("productPage",productPage);
        model.addAttribute("capacity",capacity);
        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());
        model.addAttribute("sizeCapacity",productService.getSizeCapacity(capacity).size());
        return "capacity";
    }

    @GetMapping(value = "searchByMoney")
    private String getSearchByMoney(@RequestParam(name = "page",defaultValue = "0")Optional<Integer> page,
                                    @RequestParam(name = "searchByMoney",required = false) String searchByMoney,
                                    Model model){

        Locale localeVN = new Locale("vi", "VN");
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(localeVN);
        model.addAttribute("currencyFormat",currencyFormat);

        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());
        if(searchByMoney.equals("duoi5")){
            model.addAttribute("productPage",productService.getPriceDuoi5(PageRequest.of(page.orElse(0),8)));
            model.addAttribute("sizeByMoney",productService.getSizeDuoi5().size());
        }
        else if(searchByMoney.equals("tu5den13")){
            model.addAttribute("productPage",productService.getPriceTu5Den13(PageRequest.of(page.orElse(0),8)));
            model.addAttribute("sizeByMoney",productService.getSizeTu5Den13().size());
        }
        else if(searchByMoney.equals("tu13den20")){
            model.addAttribute("productPage",productService.getPriceTu13Den20(PageRequest.of(page.orElse(0),8)));
            model.addAttribute("sizeByMoney",productService.getSizeTu13Den20().size());
        }
        else if(searchByMoney.equals("tren20")){
            model.addAttribute("productPage",productService.getPriceTren20(PageRequest.of(page.orElse(0),8)));
            model.addAttribute("sizeByMoney",productService.getSizeTren20().size());
        }
        model.addAttribute("searchByMoney",searchByMoney);
        return "searchprice";
    }

    @GetMapping(value = "searchProduct")
    public String getSearchProduct(@RequestParam(name = "page",defaultValue = "0")Optional<Integer> page,
                                   @RequestParam(name = "searchproduct",required = false) String searchproduct, Model model) {

        Locale localeVN = new Locale("vi", "VN");
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(localeVN);
        model.addAttribute("currencyFormat",currencyFormat);

        Page<Product> productPage = productService.getPageProductByName(searchproduct, PageRequest.of(page.orElse(0), 8));
        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());
        model.addAttribute("searchproduct",searchproduct);
        model.addAttribute("productPage", productPage);
        model.addAttribute("sizeSearchProduct", productService.getSizeProductByName(searchproduct).size());
        return "searchproduct";
    }

    @GetMapping(value = "productDetails")
    public String getProductDetails(@RequestParam(name = "id") int id,Model model){

        Locale localeVN = new Locale("vi", "VN");
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(localeVN);
        model.addAttribute("currencyFormat",currencyFormat);

        model.addAttribute("productDetails",productService.getProductById(id));
        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());
        return "productdetails";
    }


}
