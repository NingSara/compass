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
public interface RecommendServerProvider {
    //按照名字，理应是controller，但是由于可能没有对请求响应，所以暂时只是一个component

    //TODO 这里也要按页查询
    /**
     * 主页中根据用户喜好推荐岗位
     * 至少返回6个
     * @param user
     * @return
     */
    public List<UserBaseRecommendLink> guessYourLikeOfIndex(User user);

    /**
     * 基于ui原型设计的方法
     * 请求从from个推荐项开始的guessNum个position
     * @param from
     * @param guessNum
     * @return
     */
    public List<UserBaseRecommendLink> guessYourLike(User user,int from,int guessNum);

    /**
     * 主页中根据用户特点，能力推荐岗位
     * 至少返回4
     * @param user
     * @return
     */
    public List<UserBaseRecommendLink> recommendForYouOfIndex(User user);

    /**
     * 基于ui原型设计的方法
     * 请求从from个推荐项开始的recommendNum个position
     * @param from
     * @param recommendNum
     * @return
     */
    public List<UserBaseRecommendLink> recommendForYou(User user,int from,int recommendNum);

    /**
     * 为position在相同页面底部推荐，至少4个
     * @param relatePositionIndex
     * @return
     */
    public List<PositionBaseRecommendLink> similarPositionBelowRecommends(long relatePositionIndex);

    /**
     * 为position在相同页面底部推荐，至少4个
     * @param position
     * @return
     */
    public List<PositionBaseRecommendLink> similarPositionBelowRecommends(Position position);

    /**
     * 基于ui的设计，从from开始的下recommendNum个推荐
     * @param relatePositionIndex
     * @param from
     * @param recommendNum
     * @return
     */
    public List<PositionBaseRecommendLink> similarPositionRecommends(long relatePositionIndex,int from,int recommendNum);

    /**
     * 基于ui的设计，从from开始的下recommendNum个推荐
     * @param position
     * @param from
     * @param recommendNum
     * @return
     */
    public List<PositionBaseRecommendLink> similarPositionRecommends(Position position,int from,int recommendNum);
}
