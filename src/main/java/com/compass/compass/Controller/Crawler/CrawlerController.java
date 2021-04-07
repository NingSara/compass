package com.compass.compass.Controller.Crawler;

import com.compass.compass.bean.jobInfo.JobInfo;
import com.compass.compass.dao.jobInfoDAO.InsertJobInfoDao;
import com.mysql.cj.jdbc.Driver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.scheduling.annotation.Schedules;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 爬虫的代码写在这里
 * 可以设置爬虫自动执行，可以定在某一特定时间也可以是隔多长时间
 */
@RestController
public class CrawlerController {

    @Autowired
    InsertJobInfoDao insertJobInfoDao;
    /*
    该方法自动定时调用一个爬虫进行爬取
    fixedDelay为固定执行完成后间隔多长时间执行，单位：毫秒
     */
//    @Scheduled(cron = "") cron 为更加精准的确定某个时间点
//    @Scheduled(fixedDelay = 5*10000)
    public void runCrawler(){
        insertJobInfoDao.insertNewJobInfo(new JobInfo());
    }


}
