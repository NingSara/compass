package com.compass.compass.Controller.userInfo;

import com.compass.compass.bean.user.User;
import com.compass.compass.dao.UserDAO.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;

/**
 * @author cn
 */
@Controller
public class RegisterServlet {
    @Autowired
    UserDao userDao;

    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String registerPage(@SessionAttribute(required = false) User user){
        if (user != null){
            return "redirect:/index";//如果已经登录则不允许注册
        }
        return "/register.jsp";
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(Model model, @RequestParam String userID, String password, HttpSession session){
        Object obj = userDao.tryRegister(userID,password);
        if (obj instanceof String){
            model.addAttribute("errorMes", obj);
//            return "forward:/registerErrorMes";
            return "forward:/register";
        }else{
            session.setAttribute("user", obj);//注册成功后就进入user的会话
            return "redirect:/updateMyInfo";
        }
        //操作和login相似
        //成功重定向去完善信息 myInfo
        //失败返回提示
    }

    @ResponseBody
    @RequestMapping("/registerErrorMes")
    public String registerErrorMes(Model model){
        return (String) model.getAttribute("errorMes");
    }

}
