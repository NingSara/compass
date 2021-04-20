package com.compass.compass.Controller.recommend;

import com.compass.compass.bean.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class RecommendServlet {

    @Autowired
    RecommendServerProvider recommendServerProvider;

    @RequestMapping("/guessYourLike")
    public String getGuessYourLikePage(Model model, @SessionAttribute(required = false) User user){
        model.addAttribute("guessYourLike", recommendServerProvider.guessYourLike(user,0,10));
        return "guessYouLike.jsp";
    }

    /**
     *
     * @param model
     * @param user
     * @param pageIndex from 1
     * @return
     */
    @RequestMapping("/guessYourLike/{pageIndex}")
    public String getGuessYourLikePage(Model model, @SessionAttribute(required = false) User user,@PathVariable int pageIndex){
        model.addAttribute("guessYourLike", recommendServerProvider.guessYourLike(user,10 * (pageIndex - 1),10));
        return "guessYouLike.jsp";
    }

    @RequestMapping("/recommend")
    public String recommendPositionsPage(Model model,@SessionAttribute User user){
        model.addAttribute("recommendForYou", recommendServerProvider.recommendForYou(user,0,10));
        return "recommend.jsp";
    }

    @RequestMapping("/recommend/{pageIndex}")
    public String recommendPositionsPage(Model model,@SessionAttribute User user,@PathVariable int pageIndex){
        model.addAttribute("recommendForYou", recommendServerProvider.recommendForYou(user,10 * (pageIndex - 1),10));
        return "recommend.jsp";
    }

    @RequestMapping("/similarPositions/{positionIndex}")
    public String similarPositionsPage(Model model,@SessionAttribute User user,@PathVariable("positionIndex") long positionIndex){
        model.addAttribute("positionBaseRecommends", recommendServerProvider.similarPositionRecommends(positionIndex,0,10));
        return "similarJobs.jsp";
    }

    @RequestMapping("/similarPositions/{positionIndex}/{pageIndex}")
    public String similarPositionsPage(Model model,@SessionAttribute User user,@PathVariable("positionIndex") long positionIndex,@PathVariable int pageIndex){
        model.addAttribute("positionBaseRecommends", recommendServerProvider.similarPositionRecommends(positionIndex,10 * (pageIndex - 1),10));
        return "similarJobs.jsp";
    }
}
