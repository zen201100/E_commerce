package controller;

import entity.CartItem;
import entity.Customer;
import entity.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

@Controller
public class AccountController {
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

    @GetMapping(value = "registCustomer")
    public String getRegistCustomer(Model model){
        model.addAttribute("customer",new Customer());
        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());
        return "registcustomer";
    }

    @PostMapping(value = "registAccount")
    public String getRegistAccount(@ModelAttribute Customer customer,
                                   @RequestParam(name = "passWord") String passWord){

        List<Customer> customers = customerService.getAllCustomer();
        for (Customer c:customers){
            if (customer.getUserName().equals(c.getUserName())){
                return "redirect:registCustomer";
            }
            else if(customer.getPassword().length()==0){
                return "redirect:registCustomer";
            }
            else if(passWord.length()==0){
                return "redirect:registCustomer";
            }
            else if(customer.getEmail().length()==0){
                return "redirect:registCustomer";
            }
            else if(customer.getFullName().length()==0){
                return "redirect:registCustomer";
            }
            else if(customer.getPhone().length()==0){
                return "redirect:registCustomer";
            }
        }
        return "redirect:registCustomer";
    }

    @GetMapping(value = "login")
    public String getLogin(Model model){
        model.addAttribute("listProviders",providersService.PROVIDERS());
        model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
        model.addAttribute("listCaparity",capacityService.CAPACITIES());
        return "login";
    }
    @GetMapping(value = "logoutAccount")
    public String getLogoutAccount(HttpSession session){
        session.removeAttribute("customer");
        return "redirect:login";
    }

    @PostMapping (value = "account")
    public String getLoginAccount(HttpSession session, @RequestParam(name = "remember",required = false) String remember,
                                  @RequestParam(name = "userName") String userName,
                                  @RequestParam(name = "password") String password,
                                  Model model){

        List<Customer> customers = customerService.getAllCustomer();

        for(Customer c:customers){

            int n =  c.getFullName().replaceAll("[^ ]","").length();
            session.setAttribute("khoangtrong",n);

            if(userName.equals(c.getUserName()) && password.equals(c.getPassword()) && c.getRole().equals("user") ){

                if(remember != null){
                    session.setAttribute("userName",c.getUserName());
                    session.setAttribute("password",c.getPassword());
                    session.setAttribute("remember",remember);

                }
                else {
                    session.removeAttribute("userName");
                    session.removeAttribute("password");
                    session.removeAttribute("remember");
                }

                session.setAttribute("customer",customerService.getCustomerByUserName(userName));
                return "redirect:/";
            }

            if(userName.equals(c.getUserName()) && password.equals(c.getPassword()) && c.getRole().equals("admin")){
                return "redirect:admin";
            }
        }


        return "redirect:login";
    }

    @GetMapping(value = "myAccount")
    public String getInformation(Model model,HttpSession session){
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
            return "myaccount";
        }

    }

    @GetMapping(value = "updateInformation")
    public String getUpdateInformation(Model model,HttpSession session){
        if(session.getAttribute("customer")==null){
            return "redirect:login";
        }
        else {
            model.addAttribute("listProviders",providersService.PROVIDERS());
            model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
            model.addAttribute("listCaparity",capacityService.CAPACITIES());
            return "updateinformation";
        }

    }

    @PostMapping(value = "updateInfor")
    public String getUpdateInfor(Model model,HttpSession session, @RequestParam(name = "fullname") String fullname,
                                 @RequestParam(name = "email") String email,@RequestParam(name = "phone") String phone,
                                 @RequestParam(name = "address") String address,@RequestParam(name = "city") String city,
                                 @RequestParam(name = "district") String district,@RequestParam(name = "ward") String ward ){
        if(session.getAttribute("customer")==null){
            return "redirect:login";

        }
        else {

            Customer customer = (Customer) session.getAttribute("customer");
            customerService.getUpdateCustomer(customer.getUserName(),fullname,email,phone,address,city,district,ward);
            session.setAttribute("customer",customerService.getCustomerByUserName(customer.getUserName()));

            int n =  fullname.replaceAll("[^ ]","").length();
            session.setAttribute("khoangtrong",n);
            return "redirect:myAccount";
        }

    }

    @GetMapping(value = "changePassword")
    public String getChangePassword(Model model,HttpSession session){
        if(session.getAttribute("customer")==null){
            return "redirect:login";
        }
        else {
            model.addAttribute("listProviders",providersService.PROVIDERS());
            model.addAttribute("listTypePhone",typePhoneService.TYPE_PHONES());
            model.addAttribute("listCaparity",capacityService.CAPACITIES());
            return "changepassword";
        }

    }

    @PostMapping(value = "changePass")
    public String getChangePass(Model model,HttpSession session,
                                @RequestParam(name = "password") String password,
                                @RequestParam(name = "password1")  String password1,
                                @RequestParam(name = "password2") String password2){

        Customer customer = (Customer) session.getAttribute("customer");
        if(session.getAttribute("customer")==null){
            return "redirect:login";
        }
        else {

            if(password.length()==0){
                session.removeAttribute("errorpass");
                session.setAttribute("passnull","Vui lòng nhập mật khẩu hiện tại");
                return "redirect:changePassword";
            }
            else {
                session.removeAttribute("passnull");
            }

            if(customer.getPassword().equals(password) == false){
                session.removeAttribute("passnull");
                session.setAttribute("errorpass","Nhập sai mật khẩu");
                return "redirect:changePassword";
            }
            else {
                session.removeAttribute("errorpass");
            }
            if(password1.equals(password2) == false){
                session.setAttribute("errornewpass","Nhập lại mật khẩu mới không đúng");
                return "redirect:changePassword";
            }
            else {
                session.removeAttribute("errornewpass");
            }




            if(customer.getPassword().equals(password) && password1.equals(password2) && password1.length()>=3){
                customerService.getChangePassword(customer.getUserName(),password1);
                session.removeAttribute("customer");
                return "redirect:login";
            }
            else {
                return "redirect:changePassword";
            }

        }

    }

    

}
