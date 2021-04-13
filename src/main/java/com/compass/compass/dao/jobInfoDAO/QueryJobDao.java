package com.compass.compass.dao.jobInfoDAO;

import com.compass.compass.bean.MarkedPosition;
import com.compass.compass.bean.jobInfo.*;
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
public class QueryJobDao extends DAO {

    /**
     * 根据job的id查询
     * job中包含position的list
     * 可能的查询出错：id不存在
     * @param id
     * @return
     * @author cn
     */
    @Transactional
    public JobInfo queryCompleteJobInfoById(long id){
        JobInfo info = queryJobInfoById(id);
        //查询job
        //查询对应positions，进行组合
        info.setPositions(queryPositionsOf(id));
        return info;
    }

    /**
     * 查询job info 不包含position list
     * @param id
     * @return
     */
    public JobInfo queryJobInfoById(long id){
        String queryJob = "select * from jobs where id = ?";
        JobInfo info = jdbcTemplate.queryForObject(queryJob, new RowMapper<JobInfo>(){
            @Override
            public JobInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
                JobInfo jobInfo = new JobInfo();
                jobInfo.setId(rs.getLong("id"));
                jobInfo.setTitle(rs.getString("title"));
                jobInfo.setOriginalUrl(rs.getString("original_url"));
                jobInfo.setType(rs.getString("type"));
                jobInfo.setBeginDate(rs.getString("begin_date"));
                jobInfo.setEndDate(rs.getString("end_date"));
                jobInfo.setDeliverUrl(rs.getString("deliver_url"));
                jobInfo.setEmployUrl(rs.getString("employ_url"));
                jobInfo.setCompanyName(rs.getString("company_name"));
                jobInfo.setWelfare(rs.getString("welfare"));
                jobInfo.setPositionText(rs.getString("position_text"));
                return jobInfo;
            }
        }, id);
        return info;
    }


    public JobInfoDigest queryJobInfoDigestById(long id){
        String querySql = "SELECT title,type,begin_date,end_date,company_name FROM jobs WHERE id = ?";

        return jdbcTemplate.queryForObject(querySql, new RowMapper<JobInfoDigest>(){
            @Override
            public JobInfoDigest mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new JobInfoDigest(id,
                        rs.getString("title"),
                        rs.getString("type"),
                        rs.getString("begin_date"),
                        rs.getString("end_date"),
                        rs.getString("company_name")
                );

            }
        }, id);

    }

    /**
     *
     * @param jobId
     * @return
     * @author cn
     */
    public List<Position> queryPositionsOf(long jobId){
        String queryRelatePositions = "SELECT * FROM positions WHERE job_id = ?";
        return jdbcTemplate.query(queryRelatePositions, new PositionRowMapper(), jobId);
    }

    private class PositionRowMapper implements RowMapper<Position>{
        @Override
        public Position mapRow(ResultSet rs, int rowNum) throws SQLException {
            Position position = new Position();
            position.setJobId(rs.getLong("job_id"));
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
    }

    /**
     * 查询完整的position
     * @param positionIndex
     * @return
     */
    public Position queryPositionByIndex(long positionIndex){
        String querySql = "SELECT * FROM positions WHERE `index` = ?";
        Position position = jdbcTemplate.queryForObject(querySql, new PositionRowMapper(), positionIndex);
        position.setRelateJob(queryJobInfoById(position.getJobId()));
        return position;
    }

    /**
     * 查询最近发布的招聘信息
     * 按照id降序排列，获取n个最上面的
     * 使用limit
     * @return
     * @author cn
     */
    public List<PositionLink> queryRecentUpdatePositions(int n){
        return queryNextNPositions(n,0);
    }


    /**
     * 返回指定数量的jobInfo，用在一页一页显示招聘信息时
     * 使用sql的limit关键字可以设置偏移量
     * @return
     * @author cn
     */
    @Transactional
    public List<PositionLink> queryNextNPositions(int positionNum,int fromIndex){
        String querySql = "SELECT `index`, job_id, name, type, degree, place, wage, quantity FROM positions " +
                "ORDER BY id desc LIMIT ?,?";

        return jdbcTemplate.query(querySql, new RowMapper<PositionLink>() {
            @Override
            public PositionLink mapRow(ResultSet rs, int rowNum) throws SQLException {
                long jobId = rs.getLong("job_id");
                PositionLink positionLink = new PositionLink();
                positionLink.setPositionIndex(rs.getLong("index"));
                positionLink.setJobId(jobId);
                positionLink.setType(rs.getString("type"));
                positionLink.setDegree(rs.getString("degree"));
                positionLink.setPlace(rs.getString("place"));
                positionLink.setWage(rs.getString("wage"));
                positionLink.setQuantity(rs.getString("quantity"));
                positionLink.setRelateJobDigest(queryJobInfoDigestById(jobId));
                return positionLink;
            }
        },fromIndex,positionNum);
    }

    /**
     * 查询该用户的收藏夹
     * @param userId
     * @return
     * @author cn
     */
    public List<MarkedPosition> queryMarkedOf(int userId){

        return null;
    }

}
