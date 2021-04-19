package com.compass.compass.Controller.userInfo;

import com.compass.compass.bean.user.User;
import com.compass.compass.dao.UserDAO.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

/**
 * @author cn
 */
@Controller
public class UserInfoServlet {
    @Autowired
    UserDao userDao;

    public String setPassword(){
        return null;
    }

    @RequestMapping(value = "/myInfo",method = RequestMethod.GET)
    public String myInfoPage(Model model, @SessionAttribute(required = false) User user){
        //直接用user里的信息
        //获得几个可选项的内容
        //sex
        //major
        //degree
        //wantCity
        //wantType
        return "/myinfo.jsp";
    }


    @RequestMapping(value = "/updateMyInfo",method = RequestMethod.GET)
    public String toUpdateInfo(){
        //TODO 现在是和上面一样
        return "/myinfo.jsp";
    }

    //TODO 考虑使用response body，如果查看和修改是同一个页面，如果不是同一个页面就重定向
    @RequestMapping(value = "/updateMyInfo",method = RequestMethod.PUT)
    public String updateInfo(){
        //user .set ...user先set
        //在user或直接在这进行参数判断
            //参数有问题就返回false
            //参数没问题就返回true
        //userDao.updateUserInfo(User)

        return "";//成功重定向到myInfo，失败给出提示
    }

}
