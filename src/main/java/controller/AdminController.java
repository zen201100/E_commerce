package controller;

import entity.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @GetMapping(value = "admin")
    public String getAdmin(Model model){

        return "admin";
    }
}
