package com.compass.compass.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Index {

    @RequestMapping("/index")
    public String indexPage(){
        return "index.jsp";
    }
}
