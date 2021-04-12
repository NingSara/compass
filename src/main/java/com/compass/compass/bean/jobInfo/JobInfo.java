package com.compass.compass.bean.jobInfo;

import org.apache.catalina.LifecycleState;

import java.util.List;
/**
 * 保存工作的信息
 * 在这里需要定义job和position对应的中文的说法
 * job指一篇显示招聘信息的网页中出现的内容，为某一公司的一条【招聘信息】对应【工作】
 * position代表这个网页中出现的具体的【岗位或职位】
 * @author cn
 */
public class JobInfo extends JobInfoDigest{
    /**
     * 招聘信息来源
     * 如：时空视点。。。
     */
    private String originalUrl;
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
     */
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
        super(id,title,type,beginDate,endDate);
        this.originalUrl = originalUrl;
        this.deliverUrl = deliverUrl;
        this.employUrl = employUrl;
        this.companyName = companyName;
        this.welfare = welfare;
        this.positionText = positionText;
        this.positions = positions;
    }

    public String getOriginalUrl() {
        return originalUrl;
    }

    public void setOriginalUrl(String originalUrl) {
        this.originalUrl = originalUrl;
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
