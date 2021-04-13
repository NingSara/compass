package com.compass.compass.Controller.recommend;

import com.compass.compass.bean.jobInfo.JobInfo;
import com.compass.compass.bean.jobInfo.Position;
import com.compass.compass.bean.recommend.PositionBaseRecommendLink;
import com.compass.compass.bean.recommend.UserBaseRecommendLink;
import com.compass.compass.bean.user.User;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author cn
 */
public interface RecommendServlet {
    //按照名字，理应是controller，但是由于可能没有对请求响应，所以暂时只是一个component
    public List<UserBaseRecommendLink> getUserBaseRecommends(User user);

    public List<PositionBaseRecommendLink> getPositionBaseRecommends(long relatePositionIndex);

    public List<PositionBaseRecommendLink> getPositionBaseRecommends(Position position);
}
