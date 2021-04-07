package com.compass.compass.dao.jobInfoDAO;

import com.compass.compass.bean.jobInfo.JobInfo;
import com.compass.compass.dao.DAO;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class InsertJobInfoDao extends DAO {

    /**
     * 插入一条招聘信息
     * 操作表：jobs、positions
     */
    @Transactional
    public void insertNewJobInfo(JobInfo jobInfo){
        String jobInfoSql = "INSERT into jobs(id,title,original_url,`type`,begin_date,end_date," +
                "deliver_url,employ_url,company_name,welfare,position_text) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        String positionSql = "";
        //开始事务
        jdbcTemplate.update(jobInfoSql
        , jobInfo.getId(),jobInfo.getTitle(),jobInfo.getOriginalUrl(),jobInfo.getType(),
                jobInfo.getBeginDate(),jobInfo.getEndDate(),
                jobInfo.getDeliverUrl(),jobInfo.getDeliverUrl(),
                jobInfo.getCompanyName(),jobInfo.getWelfare(),jobInfo.getPositionText());
        //获取自动生成的jobId

        //添加positions，
    }


}
