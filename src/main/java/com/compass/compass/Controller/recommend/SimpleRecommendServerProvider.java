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
public class SimpleRecommendServerProvider implements RecommendServerProvider {

    @Autowired
    QueryJobDao queryJobDao;

    @Override
    public List<UserBaseRecommendLink> guessYourLikeOfIndex(User user) {
        return queryJobDao.queryRecentUpdatePositions(6,UserBaseRecommendLink.class);
    }

    @Override
    public List<UserBaseRecommendLink> guessYourLike(User user, int from, int guessNum) {
        return queryJobDao.queryNextNPositions(from, guessNum,UserBaseRecommendLink.class);
    }

    @Override
    public List<UserBaseRecommendLink> recommendForYouOfIndex(User user) {
        return guessYourLikeOfIndex(user);
    }

    @Override
    public List<UserBaseRecommendLink> recommendForYou(User user, int from, int recommendNum) {
        return guessYourLike(user,from,recommendNum);
    }

    @Override
    public  List<PositionBaseRecommendLink> similarPositionBelowRecommends(long relatePositionIndex) {
//        ArrayList<PositionBaseRecommendLink> recommendLinks = new ArrayList<>();
//        PositionBaseRecommendLink positionBaseRecommendLink = new PositionBaseRecommendLink();
//        positionBaseRecommendLink.setPositionIndex(0);//TODO id为0的job作为测试
//        recommendLinks.add(positionBaseRecommendLink);

        return queryJobDao.queryRecentUpdatePositions(4,PositionBaseRecommendLink.class);
    }

    @Override
    public List<PositionBaseRecommendLink> similarPositionRecommends(long relatePositionIndex, int from, int recommendNum) {
        return queryJobDao.queryNextNPositions(from,recommendNum,PositionBaseRecommendLink.class);
    }

    @Override
    public List<PositionBaseRecommendLink> similarPositionBelowRecommends(Position position) {

        return similarPositionBelowRecommends(position.getPositionIndex());
    }

    @Override
    public List<PositionBaseRecommendLink> similarPositionRecommends(Position position, int from, int recommendNum) {
        return similarPositionRecommends(position.getPositionIndex(), from, recommendNum);
    }
}
