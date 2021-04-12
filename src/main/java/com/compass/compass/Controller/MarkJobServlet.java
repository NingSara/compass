package com.compass.compass.Controller;

import com.compass.compass.bean.user.User;
import com.compass.compass.dao.jobInfoDAO.MarkJobDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * 响应用户的收藏和取消收藏操作
 * @author cn
 */
@Controller
public class MarkJobServlet {
    @Autowired
    MarkJobDao markJobDao;

    @ResponseBody
    @RequestMapping(value = "/markJob/{jobId}",method = RequestMethod.POST)
    public boolean addMark(@PathVariable("jobId") String jobId, @SessionAttribute User user){
//        markJobDao.markJob(jobId,);
        return false;
    }

    @RequestMapping("/markedJobs")
    public String markedJobs(Model model, @SessionAttribute User user){
//        model.addAttribute("markedJobs", queryJobInfoDao.queryMarkedOf(""));

        return "markedjobs.jsp";
    }


}
