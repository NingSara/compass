package com.compass.compass.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author cn
 */
@Controller
public class CategoryServlet {

    @RequestMapping(value = "/category/{category}",method = RequestMethod.GET)
    public String getCategoryPage(Model model,@PathVariable String category){
        //搜索类别对应的工作
        //添加

        return "";//TODO 返回什么页面呢
    }


}
