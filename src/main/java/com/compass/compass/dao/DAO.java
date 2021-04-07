package com.compass.compass.dao;

import com.zaxxer.hikari.HikariDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.beans.JavaBean;
import java.sql.Connection;
import java.sql.SQLException;

public abstract class DAO {
    @Autowired
    public HikariDataSource dataSource;
    @Autowired
    public JdbcTemplate jdbcTemplate;

}
