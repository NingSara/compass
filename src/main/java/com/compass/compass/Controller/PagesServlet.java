package com.compass.compass.Controller;

import com.compass.compass.Controller.recommend.RecommendServlet;
import com.compass.compass.bean.jobInfo.JobInfo;
import com.compass.compass.bean.user.User;
import com.compass.compass.dao.jobInfoDAO.QueryJobInfoDao;
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
    QueryJobInfoDao queryJobInfoDao;

    @RequestMapping("/index")
    public String indexPage(Model model,@SessionAttribute(required = false) User user){
        //从dao或者其他地方获取系统中的工作的分类，这里的分类应该是position的分类
//        model.addAttribute("categories", );
        //从dao获取最近发布的招聘信息推荐,（要不要也加个热门推荐）

        //判断是否为登录状态，向RecommendServlet请求推荐
        if (user != null){
            model.addAttribute("userBaseRecommends", recommendServlet.getUserBaseRecommends(user));
        }

        return "index.jsp";
    }

//    @RequestMapping(value = "/jobInfo",method = RequestMethod.GET)
//    public String jobInfoPage(Model model, @RequestAttribute String id){
//        JobInfo jobInfo = queryJobInfoDao.queryInfoById(id);
//        model.addAttribute("jobInfo",jobInfo);
//        model.addAttribute("jobBaseRecommends", recommendServlet.getJobBaseRecommends(jobInfo));
//        return "jobDetail.jsp";
//    }

    /*
    选择下面的，因为对于生成链接的事情是后端处理的
     */

    @RequestMapping(value = "/jobInfo/{jobId}",method = RequestMethod.GET)
    public String jobInfoPage(Model model, @PathVariable long jobId){
        JobInfo jobInfo = queryJobInfoDao.queryInfoById(jobId);
        model.addAttribute("jobInfo",jobInfo);
        model.addAttribute("jobBaseRecommends", recommendServlet.getJobBaseRecommends(jobInfo));
        return "jobDetail.jsp";
    }
}
