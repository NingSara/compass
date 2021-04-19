package com.compass.compass.Controller.userInfo;

import com.compass.compass.bean.user.User;
import com.compass.compass.dao.UserDAO.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Calendar;

/**
 * @author cn
 */
@Controller
public class LoginServlet {

    @Autowired
    UserDao userDao;

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String loginPage(){
        return "login.jsp";
    }

    /**
     * 登录是否成功并返回提示信息的方式有两种
     *  1、成功重定向至index，失败通过request的方式添加原因并转发至/login
     *  2、request body方式，成功返回成功，要求前端进行链接跳转，失败返回失败信息
     *  3、成功直接转发至页面index，失败转发至一个response body的servlet并返回提示信息
     * @param userID
     * @param password
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(Model model, HttpSession session, @RequestParam("userID") String userID, @RequestParam("password") String password){
        Object obj = userDao.checkLogin(userID,password);
        if (obj instanceof User){
            //返回User对象就说明没问题
            session.setAttribute("user", obj);
            return "redirect:/index";
        }else{
            //返回的不是user对象就是String对象，直接就是错误信息
            model.addAttribute("errorMes", obj);
//            return "forward:/loginErrorMes";
            return "forward:/login";
        }
    }

    @ResponseBody
    @RequestMapping("/loginErrorMes")
    private String loginErrorMes(Model model){
        return (String) model.getAttribute("errorMes");
    }
}
