package com.compass.compass.Controller;

import com.compass.compass.dao.jobInfoDAO.CategoryDao;
import com.compass.compass.dao.jobInfoDAO.QueryJobDao;
import org.springframework.beans.factory.annotation.Autowired;
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
    @Autowired
    QueryJobDao queryJobDao;
    @Autowired
    CategoryDao categoryDao;

    @RequestMapping(value = "/category/{categoryName}",method = RequestMethod.GET)
    public String getCategoryPage(Model model,@PathVariable String categoryName){
        //搜索类别对应的工作
        model.addAttribute("positions",queryJobDao.queryPositionsOfCategory(categoryName));
        model.addAttribute("categoryName", categoryName);

        model.addAttribute("allCategoryLinks", categoryDao.queryAllCategories());
        return "category.jsp";
    }
}
