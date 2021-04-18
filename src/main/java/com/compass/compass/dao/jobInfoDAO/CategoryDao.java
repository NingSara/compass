package com.compass.compass.dao.jobInfoDAO;

import com.compass.compass.bean.CategoryLink;
import com.compass.compass.dao.DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author cn
 */
@Repository
public class CategoryDao extends DAO {

    /**
     * 查询所有类别对应的链接
     * category is not null
     * @return
     */
    public List<CategoryLink> queryAllCategories(){
        String sql = "SELECT distinct type as category FROM positions where type is not null and type <> \"\" ";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(CategoryLink.class));
    }

    /**
     * 查询对应岗位最多的n个类别的链接
     * category is not null
     * @param n
     * @return
     */
    public List<CategoryLink> queryMostNCategories(int n){
        String sql = "SELECT type as category,count(`index`) as position_num " +
                "FROM positions  where type IS NOT NULL and type <> \"\" GROUP BY type ORDER BY position_num DESC LIMIT ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(CategoryLink.class),n);
    }
}
