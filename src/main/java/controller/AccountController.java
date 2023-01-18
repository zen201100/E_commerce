package controller;

import entity.CartItem;
import entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

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

        if(customer.getPassword().equals(passWord) && customer.getUserName()!=null && customer.getPassword()!=null && passWord!=null
                && customer.getEmail()!=null && customer.getFullName()!=null && customer.getPhone()!=null){
            customerService.getRegistCustomer(customer);
            return "redirect:login";
        }
        else {
            return "redirect:registCustomer";
        }
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
    public String getLoginAccount(HttpSession session,@RequestParam(name = "remember",required = false) String remember,
                                  @RequestParam(name = "userName") String userName,
                                  @RequestParam(name = "password") String password,
                                  Model model){

        List<Customer> customers = customerService.getAllCustomer();
        for(Customer c:customers){
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

            int n =  c.getFullName().replaceAll("[^ ]","").length();
            session.setAttribute("khoangtrong",n);

            if(userName.equals(c.getUserName()) && password.equals(c.getPassword()) && c.getRole().equals("user") ){

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
    public String getUpdateInfor(Model model,HttpSession session,@RequestParam(name = "userName") String userName,
                                 @RequestParam(name = "fullname") String fullname,
                                 @RequestParam(name = "email") String email,@RequestParam(name = "phone") String phone,
                                 @RequestParam(name = "address") String address,@RequestParam(name = "city") String city,
                                 @RequestParam(name = "district") String district,@RequestParam(name = "ward") String ward ){
        if(session.getAttribute("customer")==null){
            return "redirect:login";

        }
        else {

            customerService.getUpdateCustomer(userName,fullname,email,phone,address,city,district,ward);
            session.setAttribute("customer",customerService.getCustomerByUserName(userName));

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
    public String getChangePass(Model model,HttpSession session,@RequestParam(name = "userName") String userName,
                                @RequestParam(name = "password") String password,
                                @RequestParam(name = "password1")  String password1,
                                @RequestParam(name = "password2") String password2){

        Customer customer = customerService.getCustomerByUserName(userName);
        if(session.getAttribute("customer")==null){
            return "redirect:login";
        }
        else {

            if(customer.getPassword().equals(password) == false){
                session.setAttribute("errorpass","Nhập sai mật khẩu");
            }
            else {
                session.removeAttribute("errorpass");
            }

            if(password1.equals(password2) == false){
                session.setAttribute("errornewpass","Vui lòng nhập mật khẩu mới");
                session.setAttribute("errornewpass1","Vui lòng nhập lại mật khẩu mới");
            }
            else {
                session.removeAttribute("errornewpass");
                session.removeAttribute("errornewpass1");
            }

            if(password1.length()<3){
                session.setAttribute("mkkt","Mật khẩu phải có tối thiểu 8 ký tự");
            }
            else {
                session.removeAttribute("mkkt");
            }

            if(customer.getPassword().equals(password) && password1.equals(password2) && password1.length()>=3){
                customerService.getChangePassword(userName,password1);
                session.removeAttribute("customer");
                return "redirect:login";
            }
            else {
                return "redirect:changePassword";
            }

        }

    }
    

}
