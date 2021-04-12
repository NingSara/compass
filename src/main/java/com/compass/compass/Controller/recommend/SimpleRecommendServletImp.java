package com.compass.compass.Controller.recommend;

import com.compass.compass.bean.jobInfo.JobInfo;
import com.compass.compass.bean.recommend.JobBaseRecommendLink;
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
        userBaseRecommendLink.setId(0);//TODO id为0的job作为测试
        recommendLinks.add(userBaseRecommendLink);

        return recommendLinks;
    }

    @Override
    public List<JobBaseRecommendLink> getJobBaseRecommends(long relateJobId) {
        ArrayList<JobBaseRecommendLink> recommendLinks = new ArrayList<>();
        JobBaseRecommendLink jobBaseRecommendLink = new JobBaseRecommendLink();
        jobBaseRecommendLink.setId(0);//TODO id为0的job作为测试
        recommendLinks.add(jobBaseRecommendLink);

        return recommendLinks;
    }

    @Override
    public List<JobBaseRecommendLink> getJobBaseRecommends(JobInfo jobInfo) {

        return getJobBaseRecommends(jobInfo.getId());
    }
}
