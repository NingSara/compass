package com.compass.compass.Controller.search;

import com.compass.compass.bean.search.SearchResultLink;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author cn
 */
@Controller
public class SearchServlet {

    @RequestMapping(value = "/search")
    public String search(){
        //TODO 确定接受什么样的搜索内容
        return "search.jsp";
    }

}
