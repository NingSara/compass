package com.compass.compass.Controller;

import com.compass.compass.Controller.recommend.RecommendServlet;
import com.compass.compass.bean.jobInfo.JobInfo;
import com.compass.compass.bean.jobInfo.Position;
import com.compass.compass.bean.user.User;
import com.compass.compass.dao.jobInfoDAO.CategoryDao;
import com.compass.compass.dao.jobInfoDAO.QueryJobDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * 这是一个返回各种页面的Servlet
 * 处理仅仅显示内容而没有其他增删改功能的请求的响应
 * 即：如果找不到其他更好的Servlet处理并显示界面的话就用这个做处理
 * @author cn
 */
@Controller
public class PagesServlet {
    @Autowired
    RecommendServlet recommendServlet;
    @Autowired
    QueryJobDao queryJobDao;
    @Autowired
    CategoryDao categoryDao;

    @RequestMapping("/index")
    public String indexPage(Model model,@SessionAttribute(required = false) User user){
        //从dao或者其他地方获取系统中的工作的分类，这里的分类应该是position的分类
        model.addAttribute("categories", categoryDao.queryMostNCategories(10));
        //从dao获取最近发布的招聘信息推荐,（要不要也加个热门推荐）
        model.addAttribute("recentUpdatePositions", queryJobDao.queryRecentUpdatePositions(10));
        //判断是否为登录状态，向RecommendServlet请求推荐
        if (user != null){
            model.addAttribute("guessYourLike", recommendServlet.guessYourLike(user));
            model.addAttribute("recommendForYou",recommendServlet.recommendForYou(user));
        }
        return "index.jsp";
    }

    @RequestMapping(value = "/positionInfo/{positionIndex}",method = RequestMethod.GET)
    public String positionInfoPage(Model model, @PathVariable(name = "positionIndex") Long positionIndex){
        Position position = queryJobDao.queryPositionByIndex(positionIndex);
        model.addAttribute("position",position);
        model.addAttribute("positionBaseRecommends", recommendServlet.similarPositionRecommends(position));
        return "jobDetail.jsp";
    }

    @RequestMapping("/guessYourLike")
    public String getGuessYourLikePage(Model model,@SessionAttribute(required = false) User user){
        model.addAttribute("guessYourLike", recommendServlet.guessYourLike(user));
        return "guessYouLike.jsp";
    }

    @RequestMapping("/recommend")
    public String recommendPositionsPage(){
        return "recommend.jsp";
    }

    @RequestMapping("/similarPositions")
    public String similarPositionsPage(){
        return "similarJobs.jsp";
    }
}
