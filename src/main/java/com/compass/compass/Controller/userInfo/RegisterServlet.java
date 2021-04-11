package com.compass.compass.Controller.userInfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
public class RegisterServlet {

    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String registerPage(){
        return "/register.jsp";
    }

    @ResponseBody
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(){

        //操作和login相似
        //成功重定向去完善信息 myInfo
        //失败返回提示
        return "";
    }

}
