package com.compass.compass.bean.jobInfo;

public abstract class AbstractPosition implements PositionDigest{
    /**职位在数据库的索引 */
    protected long positionIndex;
    /**对应工作的id */
    protected long jobId;
    /**职位名称 */
    protected String name;
    /**职位类型*/
    protected String type;
    /**学历要求 */
    protected String degree;
    /**工作城市*/
    protected String place;
    /**工资情况*/
    protected String wage;
    /**招聘人数*/
    protected String quantity;

    public AbstractPosition(){

    }

    public AbstractPosition(long positionIndex, long jobId, String name, String type,
                            String degree, String place, String wage, String quantity) {
        this.positionIndex = positionIndex;
        this.jobId = jobId;
        this.name = name;
        this.type = type;
        this.degree = degree;
        this.place = place;
        this.wage = wage;
        this.quantity = quantity;
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

    @Override
    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
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
