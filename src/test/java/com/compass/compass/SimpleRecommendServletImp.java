package com.compass.compass;

import com.compass.compass.Controller.recommend.RecommendServlet;
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
    public List<UserBaseRecommendLink> getUserBaseRecommends(User user) {
        ArrayList<UserBaseRecommendLink> recommendLinks = new ArrayList<>();
        UserBaseRecommendLink userBaseRecommendLink = new UserBaseRecommendLink();
        userBaseRecommendLink.setPositionIndex(0);//TODO id为0的job作为测试
        recommendLinks.add(userBaseRecommendLink);

        return recommendLinks;
    }

    @Override
    public  List<PositionBaseRecommendLink> getPositionBaseRecommends(long relatePositionIndex) {
        ArrayList<PositionBaseRecommendLink> recommendLinks = new ArrayList<>();
        PositionBaseRecommendLink positionBaseRecommendLink = new PositionBaseRecommendLink();
        positionBaseRecommendLink.setPositionIndex(0);//TODO id为0的job作为测试
        recommendLinks.add(positionBaseRecommendLink);

        return recommendLinks;
    }

    @Override
    public List<PositionBaseRecommendLink> getPositionBaseRecommends(Position position) {

        return getPositionBaseRecommends(position.getPositionIndex());
    }
}
