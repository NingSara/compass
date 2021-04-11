package com.compass.compass.dao.jobInfoDAO;

import com.compass.compass.bean.MarkedJob;
import com.compass.compass.bean.jobInfo.JobInfo;
import com.compass.compass.dao.DAO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class QueryJobInfoDao extends DAO {

    /**
     * 根据job的id查询
     * @param id
     * @return
     */
    public JobInfo queryInfoById(String id){
        String sql = "";
        //查询job
        //查询对应positions，进行组合

        return null;
    }

    /**
     * 查询该用户的收藏夹
     * @param userId
     * @return
     */
    public List<MarkedJob> queryMarkedOf(String userId){

        return null;
    }

}
