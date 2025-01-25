package com.example.EC;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Homecontroller {

    @RequestMapping("/home")
    public String home(){
        System.out.println("home method called");
        return "index.jsp";
    }


}

