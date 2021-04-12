package com.compass.compass.bean.jobInfo;

import java.util.List;

/**
 * 招聘信息摘要
 * @author cn
 */
public class JobInfoDigest {
    /**在数据库中的id*/
    protected long id;
    /**招聘信息标题*/
    protected String title;
    /**
     * 招聘类型
     * 如：校园招聘、社会招聘等
     * */
    protected String type;
    /**招聘起始时间*/
    //TODO 起始时间和截止时间是否需要换成java的time类型
    protected String beginDate;
    /**
     * 招聘截止时间
     * 可能为空
     * */
    protected String endDate;

    public JobInfoDigest() {

    }

    public JobInfoDigest(long id, String title, String type,
                         String beginDate, String endDate) {
        this.id = id;
        this.title = title;
        this.type = type;
        this.beginDate = beginDate;
        this.endDate = endDate;
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
}
