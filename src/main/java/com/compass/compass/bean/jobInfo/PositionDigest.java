package com.compass.compass.bean.jobInfo;

public interface PositionDigest {

    public long getPositionIndex();

//    public void setPositionIndex(long positionIndex);

    public long getJobId() ;

    public String getName();

    public String getType();

    public String getDegree();

    /*
    * 没要求require，因为感觉require稍微具体了点
    */

    public String getPlace();

    public String getCompanyName();

    public String getWage();

    public String getQuantity();

    public JobInfoDigest getRelateJobDigest();

}
