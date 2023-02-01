package controller;

import entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.OrderService;

import javax.servlet.http.HttpSession;

@Controller
public class AdminController {
    @Autowired
    private OrderService orderService;

    @GetMapping(value = "admin")
    public String getAdmin(Model model,HttpSession session){

        if(session.getAttribute("admin")==null){
            return "redirect:login";
        }
        else {

            return "admin";

        }
    }



}
