package com.compass.compass.bean.jobInfo;

public class Position {
    /**职位在数据库的索引 */
    private long positionIndex;
    /**对应工作的id */
    private long jobId;
    /**职位名称 */
    private String name;
    /**职位类型类型*/
    private String type;
    /**学历要求 */
    private String major;
    /**技能要求*/
    private String require;
    /**工作城市*/
    private String place;
    /**工资情况*/
    private String wage;
    /**招聘人数*/
    private String quantity;

    public long getPositionIndex() {
        return positionIndex;
    }

    public void setPositionIndex(long positionIndex) {
        this.positionIndex = positionIndex;
    }

    public long getJobId() {
        return jobId;
    }

    public void setJobId(long jobId) {
        this.jobId = jobId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getRequire() {
        return require;
    }

    public void setRequire(String require) {
        this.require = require;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getWage() {
        return wage;
    }

    public void setWage(String wage) {
        this.wage = wage;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Position{" +
                "positionIndex=" + positionIndex +
                ", jobId=" + jobId +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", major='" + major + '\'' +
                ", require='" + require + '\'' +
                ", place='" + place + '\'' +
                ", wage='" + wage + '\'' +
                ", quantity='" + quantity + '\'' +
                '}';
    }
}
