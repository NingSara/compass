package com.compass.compass.Controller.recommend;

import com.compass.compass.bean.jobInfo.JobInfo;
import com.compass.compass.bean.jobInfo.Position;
import com.compass.compass.bean.recommend.PositionBaseRecommendLink;
import com.compass.compass.bean.recommend.UserBaseRecommendLink;
import com.compass.compass.bean.user.User;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * @author cn
 */
@Component
public class SimpleRecommendServletImp implements RecommendServlet {

    @Override
    public List<UserBaseRecommendLink> guessYourLike(User user) {
        ArrayList<UserBaseRecommendLink> recommendLinks = new ArrayList<>();
        UserBaseRecommendLink userBaseRecommendLink = new UserBaseRecommendLink();
        userBaseRecommendLink.setPositionIndex(0);//TODO id为0的job作为测试
        recommendLinks.add(userBaseRecommendLink);
        return recommendLinks;
    }

    @Override
    public List<UserBaseRecommendLink> recommendForYou(User user) {
        return guessYourLike(user);
    }

    @Override
    public  List<PositionBaseRecommendLink> similarPositionRecommends(long relatePositionIndex) {
        ArrayList<PositionBaseRecommendLink> recommendLinks = new ArrayList<>();
        PositionBaseRecommendLink positionBaseRecommendLink = new PositionBaseRecommendLink();
        positionBaseRecommendLink.setPositionIndex(0);//TODO id为0的job作为测试
        recommendLinks.add(positionBaseRecommendLink);

        return recommendLinks;
    }

    @Override
    public List<PositionBaseRecommendLink> similarPositionRecommends(Position position) {

        return similarPositionRecommends(position.getPositionIndex());
    }
}
