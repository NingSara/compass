package com.compass.compass.Controller.recommend;

import com.compass.compass.bean.jobInfo.JobInfo;
import com.compass.compass.bean.jobInfo.JobInfoDigest;
import com.compass.compass.bean.jobInfo.Position;
import com.compass.compass.bean.recommend.PositionBaseRecommendLink;
import com.compass.compass.bean.recommend.UserBaseRecommendLink;
import com.compass.compass.bean.user.User;
import com.compass.compass.dao.jobInfoDAO.QueryJobDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * @author cn
 */
@Component
public class SimpleRecommendServletImp implements RecommendServlet {

    @Autowired
    QueryJobDao queryJobDao;

    @Override
    public List<UserBaseRecommendLink> guessYourLikeOfIndex(User user) {
        ArrayList<UserBaseRecommendLink> recommendLinks = new ArrayList<>();

        for (int i = 0;i < 6;i++){
            UserBaseRecommendLink userBaseRecommendLink = new UserBaseRecommendLink();
            userBaseRecommendLink.setPositionIndex(i);//TODO id为0的job作为测试
            userBaseRecommendLink.setName("xx" + i);
            userBaseRecommendLink.setPlace("北京");
            JobInfoDigest relateJob = new JobInfoDigest();
            relateJob.setCompanyName("山东大学");
            userBaseRecommendLink.setRelateJobDigest(relateJob);
            recommendLinks.add(userBaseRecommendLink);
        }


        return recommendLinks;
    }

    @Override
    public List<UserBaseRecommendLink> recommendForYouOfIndex(User user) {
        return guessYourLikeOfIndex(user);
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
