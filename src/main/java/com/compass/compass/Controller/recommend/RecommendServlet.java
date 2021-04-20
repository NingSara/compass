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

    //TODO 这里也要按页查询
    /**
     * 主页中根据用户喜好推荐岗位
     * 至少返回6个
     * @param user
     * @return
     */
    public List<UserBaseRecommendLink> guessYourLikeOfIndex(User user);

//    public List<UserBaseRecommendLink> guessYourLike

    /**
     * 主页中根据用户特点，能力推荐岗位
     * 至少返回4
     * @param user
     * @return
     */
    public List<UserBaseRecommendLink> recommendForYouOfIndex(User user);

    /**
     *
     * @param relatePositionIndex
     * @return
     */
    public List<PositionBaseRecommendLink> similarPositionRecommends(long relatePositionIndex);

    public List<PositionBaseRecommendLink> similarPositionRecommends(Position position);
}
