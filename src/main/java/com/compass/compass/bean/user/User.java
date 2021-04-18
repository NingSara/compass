package com.compass.compass.bean.user;

/**
 * @author cn
 */
public class User {
    private String userID;

    private String password;

    private String name;

    private Sex sex;

    private int age;

    private String major;

    private String degree;

    private String wantCity;

    private String wantWage;

    private String wantType;

    public User(String userID, String password, String name,
                String sex, int age, String major, String degree,
                String wantCity, String wantWage, String wantType) {
        this.userID = userID;
        this.password = password;
        this.name = name;
        this.sex = Sex.strToSex(sex);
        this.age = age;
        this.major = major;
        this.degree = degree;
        this.wantCity = wantCity;
        this.wantWage = wantWage;
        this.wantType = wantType;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Sex getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = Sex.strToSex(sex);
    }

    public void setSex(Sex sex){
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getWantCity() {
        return wantCity;
    }

    public void setWantCity(String wantCity) {
        this.wantCity = wantCity;
    }

    public String getWantWage() {
        return wantWage;
    }

    public void setWantWage(String wantWage) {
        this.wantWage = wantWage;
    }

    public String getWantType() {
        return wantType;
    }

    public void setWantType(String wantType) {
        this.wantType = wantType;
    }


}
