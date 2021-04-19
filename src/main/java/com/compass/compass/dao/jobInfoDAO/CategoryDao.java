package com.compass.compass.dao.jobInfoDAO;

import com.compass.compass.bean.CategoryLink;
import com.compass.compass.bean.jobInfo.PositionLink;
import com.compass.compass.dao.DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.*;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author cn
 */
@Repository
@ConfigurationProperties(prefix = "dao.category")
public class CategoryDao extends DAO {

    private ArrayList<String> fixedCategories;

    public ArrayList<String> getFixedCategories() {
        return fixedCategories;
    }

    public void setFixedCategories(ArrayList<String> fixedCategories) {
        this.fixedCategories = fixedCategories;
    }

    /**
     * 查询所有类别对应的链接
     * category is not null
     * @return
     */
    public List<CategoryLink> queryAllCategories(){
        String sql = "SELECT type as category,count(`index`) as positionNum FROM positions where type is not null and type <> \"\" " +
                "GROUP BY type";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(CategoryLink.class));
    }

    /**
     * 查询对应岗位最多的n个类别的链接
     * category is not null
     * @param n
     * @return
     */
    public List<CategoryLink> queryMostNCategories(int n){
        String sql = "SELECT type as category,count(`index`) as positionNum " +
                "FROM positions  where type IS NOT NULL and type <> \"\" GROUP BY type ORDER BY positionNum DESC LIMIT ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(CategoryLink.class),n);
    }

    public List<CategoryLink> queryFixedCategories(){
        //就查数量
        //query 没有batch
        String sql = "SELECT type as category,count(`index`) as positionNum FROM positions GROUP BY type";
        return jdbcTemplate.query(sql, new ResultSetExtractor<List<CategoryLink>>(){
            @Override
            public List<CategoryLink> extractData(ResultSet rs) throws SQLException, DataAccessException {
                List<CategoryLink> links = new ArrayList<>(fixedCategories.size());
                while(rs.next()){
                    String category = rs.getString("category");
                    if (fixedCategories.contains(category)){
                        CategoryLink categoryLink = new CategoryLink();
                        categoryLink.setCategoryName(category);
                        categoryLink.setPositionNum(rs.getInt("positionNum"));
                        links.add(categoryLink);
                    }
                }
                return links;
            }
        });
    }

}
