package com.compass.compass.bean.jobInfo;

import com.compass.compass.bean.Link;

public class PositionLink implements Link,PositionDigest {

    /**职位在数据库的索引 */
    private long positionIndex;
    /**对应工作的id */
    private long jobId;
    /**
     * 与它关联的job
     */
    private JobInfoDigest relateJob;
    /**职位名称 */
    private String name;
    /**职位类型*/
    private String type;
    /**学历要求 */
    private String degree;
    /**技能要求*/
    private String require;
    /**工作城市*/
    private String place;
    /**工资情况*/
    private String wage;
    /**招聘人数*/
    private String quantity;

    @Override
    public String getUrl() {
        return null;
    }

    @Override
    public long getPositionIndex() {
        return positionIndex;
    }

    public void setPositionIndex(long positionIndex) {
        this.positionIndex = positionIndex;
    }

    @Override
    public long getJobId() {
        return jobId;
    }

    public void setJobId(long jobId) {
        this.jobId = jobId;
    }

    public JobInfoDigest getRelateJobDigest() {
        return relateJob;
    }

    public void setRelateJobDigest(JobInfoDigest relateJob) {
        this.relateJob = relateJob;
    }

    @Override
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getRequire() {
        return require;
    }

    public void setRequire(String require) {
        this.require = require;
    }

    @Override
    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    @Override
    public String getCompanyName() {
        return relateJob.getCompanyName();
    }

    @Override
    public String getWage() {
        return wage;
    }

    public void setWage(String wage) {
        this.wage = wage;
    }

    @Override
    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
}
