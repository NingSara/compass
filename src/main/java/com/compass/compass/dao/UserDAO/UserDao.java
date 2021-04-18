package com.compass.compass.dao.UserDAO;

import com.compass.compass.bean.user.User;
import com.compass.compass.dao.DAO;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

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
        String sql = "SELECT userID, password, name, sex, age, major, degree, " +
                "want_city as wantCity, want_wage as wantWage, want_type as wantType FROM user_info WHERE userID = ?";
        User user = jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper<User>(User.class),userId);
        if (user == null){
            return "账号不存在";
        }else if (user.getPassword().equals(password)){
            return user;
        }else{
            return "密码错误";
        }
    }


}
