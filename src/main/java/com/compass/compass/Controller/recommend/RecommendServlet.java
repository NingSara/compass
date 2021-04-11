package com.compass.compass.Controller.recommend;

import com.compass.compass.bean.jobInfo.JobInfo;
import com.compass.compass.bean.recommend.JobBaseRecommendLink;
import com.compass.compass.bean.recommend.UserBaseRecommendLink;
import com.compass.compass.bean.user.User;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 *
 */
@Component//按照名字，理应是controller，但是由于可能没有对请求响应，所以暂时只是一个component
public interface RecommendServlet {

    public List<UserBaseRecommendLink> getUserBaseRecommends(User user);

    public List<JobBaseRecommendLink> getJobBaseRecommends(String relateJobId);

    public List<JobBaseRecommendLink> getJobBaseRecommends(JobInfo jobInfo);
}
