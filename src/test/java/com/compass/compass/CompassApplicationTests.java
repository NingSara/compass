package com.compass.compass;

import com.compass.compass.dao.DAO;
import com.compass.compass.dao.UserDAO.UserDao;
import com.compass.compass.dao.jobInfoDAO.CategoryDao;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.junit.jupiter.params.provider.ValueSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.sql.DataSource;
import java.sql.SQLException;

@SpringBootTest
@RestController
class CompassApplicationTests {

    @Autowired
    DataSource dataSource;
    @Autowired
    CategoryDao categoryDao;
    @Autowired
    UserDao userDao;

    @Test
    void contextLoads() throws SQLException {
        System.out.println(dataSource.getConnection().getTransactionIsolation());;
    }

    @Test
    @RequestMapping("/testQueryCategory_1")
    void testCategoryDao1(){
        System.out.println(categoryDao.queryAllCategories().toString());
    }

    @Test
    @RequestMapping("/testQueryCategory_2")
    void testCategoryDao2(){
        System.out.println(categoryDao.queryMostNCategories(10).toString());
    }

    @Test
    @ParameterizedTest
    @CsvSource({"'1', '123456'",
                "'1','123'",
                "'3',''"})
    void testLogin(String userId,String password){
        System.out.println(userDao.checkLogin(userId, password));
    }

    @Test
    void testCategoryQuery(){
        System.out.println(categoryDao.queryFixedCategories().toString());
    }

    @Transactional
    @Test
    @ParameterizedTest
    @CsvSource({
            "'1','123456'",
            "'cn','123456'"
    })
    void testRegister(String userId,String password){
        System.out.println(userDao.tryRegister(userId, password));
    }


}
