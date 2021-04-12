package com.compass.compass.dao.jobInfoDAO;

import com.compass.compass.bean.MarkedJob;
import com.compass.compass.bean.jobInfo.JobInfo;
import com.compass.compass.bean.jobInfo.JobInfoLink;
import com.compass.compass.bean.jobInfo.Position;
import com.compass.compass.dao.DAO;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * @author cn
 */
@Repository
public class QueryJobInfoDao extends DAO {

    /**
     * 根据job的id查询
     * @param id
     * @return
     * @author cn
     */
    @Transactional
    public JobInfo queryInfoById(long id){
        String queryJob = "select * from jobs where id = ?";
        JobInfo info = jdbcTemplate.queryForObject(queryJob, new RowMapper<JobInfo>(){
            @Override
            public JobInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
                JobInfo jobInfo = new JobInfo();
                jobInfo.setId(rs.getLong("id"));
                jobInfo.setTitle(rs.getString("title"));
                jobInfo.setOriginalUrl(rs.getString("origin_url"));
                jobInfo.setType(rs.getString("type"));
                jobInfo.setBeginDate(rs.getString("begin_date"));
                jobInfo.setEndDate(rs.getString("end_date"));
                jobInfo.setDeliverUrl(rs.getString("delivery_url"));
                jobInfo.setEmployUrl(rs.getString("employ_url"));
                jobInfo.setCompanyName(rs.getString("company_name"));
                jobInfo.setWelfare(rs.getString("employ_url"));
                jobInfo.setPositionText(rs.getString("position_text"));
                return jobInfo;
            }
        }, id);
        //查询job
        //查询对应positions，进行组合
        info.setPositions(queryPositionsOf(id));
        return info;
    }

    /**
     *
     * @param jobId
     * @return
     * @author cn
     */
    public List<Position> queryPositionsOf(long jobId){
        String queryRelatePositions = "SELECT * FROM positions WHERE job_id = ?";
        return jdbcTemplate.query(queryRelatePositions, new RowMapper<Position>(){
            @Override
            public Position mapRow(ResultSet rs, int rowNum) throws SQLException {
                Position position = new Position();
                position.setJobId(rs.getLong("job_index"));
                position.setPositionIndex(rs.getLong("index"));
                position.setName(rs.getString("name"));
                position.setType(rs.getString("type"));
                position.setDegree(rs.getString("degree"));
                position.setRequire(rs.getString("require"));
                position.setRequire(rs.getString("place"));//TODO 这里要不要改成city
                position.setWage(rs.getString("wage"));
                position.setQuantity(rs.getString("quantity"));
                return position;
            }
        }, jobId);
    }

    /**
     * 查询最近发布的招聘信息
     * 按照id降序排列，获取n个最上面的
     * 使用limit
     * @return
     * @author cn
     */
    public List<JobInfoLink> queryRecentJobs(int n){
        return queryNextNJobs(n,0);
    }


    /**
     * 返回指定数量的jobInfo，用在一页一页显示招聘信息时
     * 使用sql的limit关键字可以设置偏移量
     * @return
     * @author cn
     */
    public List<JobInfoLink> queryNextNJobs(int jobNum,int fromIndex){
        String querySql = "SELECT id,title,original_url,`type`,begin_date,end_date FROM jobs " +
                "ORDER BY id desc LIMIT ?,?";

        return jdbcTemplate.query(querySql, new RowMapper<JobInfoLink>() {
            @Override
            public JobInfoLink mapRow(ResultSet rs, int rowNum) throws SQLException {
                JobInfoLink infoLink = new JobInfoLink();
                infoLink.setId(rs.getLong("id"));
                infoLink.setTitle(rs.getString("title"));
                infoLink.setType(rs.getString("type"));
                infoLink.setBeginDate(rs.getString("begin_date"));
                infoLink.setEndDate(rs.getString("end_date"));
                return infoLink;
            }
        },fromIndex,jobNum);

    }

    /**
     * 查询该用户的收藏夹
     * @param userId
     * @return
     * @author cn
     */
    public List<MarkedJob> queryMarkedOf(String userId){

        return null;
    }

}
