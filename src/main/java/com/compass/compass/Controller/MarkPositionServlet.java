package com.compass.compass.Controller;

import com.compass.compass.bean.MarkedPosition;
import com.compass.compass.bean.user.User;
import com.compass.compass.dao.jobInfoDAO.MarkPositionDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * 响应用户的收藏和取消收藏操作
 * @author cn
 */
@Controller
public class MarkPositionServlet {
    @Autowired
    MarkPositionDao markPositionDao;

//    @ResponseBody
    @RequestMapping(value = "/markPosition/{positionIndex}",method = RequestMethod.POST)
    public boolean addMark(@PathVariable("positionIndex") long positionIndex, @SessionAttribute User user){

        return false;
    }

    @RequestMapping("/markedPositions")
    public String markedJobs(Model model, @SessionAttribute(required = false) User user){
//        model.addAttribute("markedJobs", queryJobInfoDao.queryMarkedOf(""));

        return "markedjobs.jsp";
    }


}
