package com.compass.compass;

import com.compass.compass.dao.DAO;
import com.compass.compass.dao.jobInfoDAO.CategoryDao;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Repository;
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
    
    void testLogin(){

    }


}
