package com.compass.compass.Controller.userInfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author cn
 */
@Controller
public class LoginServlet {

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String loginPage(){
        return "login.jsp";
    }

    @ResponseBody
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(){
        //试试可不可以用redirect，虽然觉得一定是不行的，所以就直接用response.redirect

        //或者了解不用response body怎么只返回字符串，即绕过视图解析

        return "";//失败提示，成功则转发请求到index
    }
}
