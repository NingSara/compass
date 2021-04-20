package com.compass.compass.Controller;

import com.compass.compass.dao.jobInfoDAO.CategoryDao;
import com.compass.compass.dao.jobInfoDAO.QueryJobDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * @author cn
 */
@Controller
public class CategoryServlet {
    @Autowired
    QueryJobDao queryJobDao;
    @Autowired
    CategoryDao categoryDao;

    @RequestMapping(value = "/category/{categoryName}",method = RequestMethod.GET)
    public String getCategoryPage(Model model, @PathVariable("categoryName") String categoryName, HttpSession session){
        return getCategoryPage(model,categoryName, 1, session);
    }

    @RequestMapping(value = "/category/{categoryName}/{pageIndex}",method = RequestMethod.GET)
    public String getCategoryPage(Model model, @PathVariable("categoryName") String categoryName, @PathVariable("pageIndex") int pageIndex,HttpSession session){
        //TODO 为下面的参数增加一个时间戳，超过一定时间进行更新
        if (session.getAttribute("fixedCategories") == null){
            session.setAttribute("fixedCategories", categoryDao.queryFixedCategories());
        }

        //搜索类别对应的工作
        model.addAttribute("positions",queryJobDao.queryPositionsOfCategory(categoryName,(pageIndex - 1) * 10, 10));
        model.addAttribute("categoryName", categoryName);

        model.addAttribute("allCategoryLinks", categoryDao.queryAllCategories());
        return "category.jsp";
    }
}
