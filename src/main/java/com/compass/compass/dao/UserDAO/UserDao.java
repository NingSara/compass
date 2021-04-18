package com.compass.compass.dao.UserDAO;

import com.compass.compass.bean.user.User;
import com.compass.compass.dao.DAO;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author cn
 */
@Repository
public class UserDao extends DAO {

    /**
     * TODO 将对象改为object，错误就返回错误信息类
     * @param userId
     * @param password
     * @return
     */
    public Object checkLogin(String userId,String password){
        String sql = UserRowMapper.sql + "WHERE userID <=> ?";
        try{
            User user = jdbcTemplate.queryForObject(sql,new UserRowMapper(),userId);
            if (user.getPassword().equals(password)){
                return user;
            }else{
                return "密码错误";
            }
        }catch (IncorrectResultSizeDataAccessException e){
            return "账号不存在";
        }

    }

}

class UserRowMapper implements RowMapper<User>{
    static String sql = "SELECT * FROM user_info ";

    @Override
    public User mapRow(ResultSet rs, int rowNum) throws SQLException {
        User user = new User(rs.getString("userID"),
                rs.getString("password"),
                rs.getString("name"),
                rs.getString("sex"),
                rs.getInt("age"),
                rs.getString("major"),
                rs.getString("degree"),
                rs.getString("want_city"),
                rs.getString("want_wage"),
                rs.getString("want_type"));
        return user;
    }
}
