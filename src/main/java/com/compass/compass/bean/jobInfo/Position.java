package com.compass.compass.bean.jobInfo;

/**
 * @author cn
 */
public class Position extends AbstractPosition{

    /**
     * 与它关联的job
     */
    private JobInfo relateJob;
    /**技能要求*/
    private String require;


    public Position() {
    }

    public Position(long positionIndex, long jobId, String name, String type, String degree,
                    String place, String wage,
                    String quantity, JobInfo relateJob, String require) {
        super(positionIndex, jobId, name, type, degree, place, wage, quantity);
        this.relateJob = relateJob;
        this.require = require;
    }

    public String getRequire() {
        return require;
    }

    public void setRequire(String require) {
        this.require = require;
    }

    @Override
    public String getCompanyName() {
        return relateJob.getCompanyName();
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

    //从job取东西

    public String getBeginDate() {
        return relateJob.getBeginDate();
    }

    public String getEndDate() {
        return relateJob.getEndDate();
    }

    /**
     *
     * @return
     */
    public String getJobOriginalUrl() {
        return relateJob.getOriginalUrl();
    }

    public String getJobDeliverUrl() {
        return relateJob.getDeliverUrl();
    }

    public String getJobEmployUrl() {
        return relateJob.getEmployUrl();
    }

    public String getJobWelfare() {
        return relateJob.getWelfare();
    }

    public String getJobPositionText() {
        return relateJob.getPositionText();
    }

    public String getJobTitle() {
        return relateJob.getTitle();
    }
}
