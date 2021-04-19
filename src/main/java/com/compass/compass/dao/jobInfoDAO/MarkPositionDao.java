package com.compass.compass.dao.jobInfoDAO;

import com.compass.compass.dao.DAO;
import org.springframework.stereotype.Repository;

/**
 * @author cn
 */
@Repository
public class MarkPositionDao extends DAO {

    /**
     * 这里引出一个问题，mark是mark一个position还是一个job
     * 或者两个都可以,我觉得position得mark应该是要的，在推荐得时候好用些
     * @param positionIndex
     * @param userId
     * @return
     */
    public boolean markJob(long positionIndex,String userId){
        String sql = "UPDATE";
//        jdbcTemplate.update(sql,)

        return false;
    }


}
