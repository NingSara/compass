package com.compass.compass.bean.jobInfo;

/**
 * @author cn
 */
public class Position implements PositionDigest{

    /**职位在数据库的索引 */
    private long positionIndex;
    /**对应工作的id */
    private long jobId;
    /**
     * 与它关联的job
     */
    private JobInfo relateJob;
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

    public Position() {
    }

    public Position(long positionIndex, long jobId, JobInfo relateJob,
                    String name, String type, String degree, String require,
                    String place, String wage, String quantity) {
        this.positionIndex = positionIndex;
        this.jobId = jobId;
        this.relateJob = relateJob;
        this.name = name;
        this.type = type;
        this.degree = degree;
        this.require = require;
        this.place = place;
        this.wage = wage;
        this.quantity = quantity;
    }

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

    public JobInfoDigest getRelateJobDigest() {
        return relateJob;
    }

    public JobInfo getCompleteJobInfo(){
        return relateJob;
    }

    public void setRelateJob(JobInfo relateJob) {
        this.relateJob = relateJob;
    }

    @Override
    public String toString() {
        return "Position{" +
                "positionIndex=" + positionIndex +
                ", jobId=" + jobId +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", degree='" + degree + '\'' +
                ", require='" + require + '\'' +
                ", place='" + place + '\'' +
                ", wage='" + wage + '\'' +
                ", quantity='" + quantity + '\'' +
                '}';
    }
}
