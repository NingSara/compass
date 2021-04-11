package com.compass.compass.Controller.userInfo;

import com.compass.compass.bean.user.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class UserInfoServlet {
    /*
    user info需要分为查看的页面和修改的页面
     */

    @RequestMapping(value = "/myInfo",method = RequestMethod.GET)
    public String myInfoPage(Model model, @SessionAttribute User user){
        //直接用user里的信息还是复制到model一份

        return "/myinfo.jsp";
    }


    @RequestMapping(value = "/updateMyInfo",method = RequestMethod.GET)
    public String toUpdateInfo(){

        return "";
    }

    @RequestMapping(value = "/updateMyInfo",method = RequestMethod.PUT)
    public String updateInfo(){

        return "";//成功重定向到myInfo，失败给出提示
    }

}
