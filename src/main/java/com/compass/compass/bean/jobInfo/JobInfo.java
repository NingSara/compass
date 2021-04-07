package com.compass.compass.bean.jobInfo;

import org.apache.catalina.LifecycleState;

import java.util.List;
/**
 * 保存工作的信息
 * 在这里需要定义job和position对应的中文的说法
 * job指一篇显示招聘信息的网页中出现的内容，为某一公司的一条【招聘信息】对应【工作】
 * position代表这个网页中出现的具体的【岗位或职位】
 */
public class JobInfo {
    /**在数据库中的id*/
    private long id;
    /**招聘信息标题*/
    private String title;
    /**
     * 招聘信息来源
     * 如：时空视点。。。
     */
    private String originalUrl;
    /**
     * 招聘类型
     * 如：校园招聘、社会招聘等
     * */
    private String type;
    /**招聘起始时间*/
    //TODO 起始时间和截止时间是否需要换成java的time类型
    private String beginDate;
    /**
     * 招聘截止时间
     * 可能为空
     * */
    private String endDate;
    /**
     * 简历投递的邮箱地址
     * 可能为空
     * */
    private String deliverUrl;
    /**
     * 对应公司的招聘网站
     * 可能为空
     * */
    private String employUrl;
    /**
     * 公司名
     * */
    private String companyName;
    /**福利*/
    private String welfare;
    /**职位信息概述*/
    private String positionText;
    /**
     * 具体的职位信息列表
     */
    private List<Position> positions;

    public JobInfo(){

    }

    public JobInfo(long id, String title, String originalUrl, String type,
                   String beginDate, String endDate, String deliverUrl, String employUrl,
                   String companyName,String welfare, String positionText, List<Position> positions) {
        this.id = id;
        this.title = title;
        this.originalUrl = originalUrl;
        this.type = type;
        this.beginDate = beginDate;
        this.endDate = endDate;
        this.deliverUrl = deliverUrl;
        this.employUrl = employUrl;
        this.companyName = companyName;
        this.welfare = welfare;
        this.positionText = positionText;
        this.positions = positions;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOriginalUrl() {
        return originalUrl;
    }

    public void setOriginalUrl(String originalUrl) {
        this.originalUrl = originalUrl;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(String beginDate) {
        this.beginDate = beginDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getDeliverUrl() {
        return deliverUrl;
    }

    public void setDeliverUrl(String deliverUrl) {
        this.deliverUrl = deliverUrl;
    }

    public String getEmployUrl() {
        return employUrl;
    }

    public void setEmployUrl(String employUrl) {
        this.employUrl = employUrl;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getWelfare() {
        return welfare;
    }

    public void setWelfare(String welfare) {
        this.welfare = welfare;
    }

    public String getPositionText() {
        return positionText;
    }

    public void setPositionText(String positionText) {
        this.positionText = positionText;
    }

    public List<Position> getPositions() {
        return positions;
    }

    public void setPositions(List<Position> positions) {
        this.positions = positions;
    }
}
