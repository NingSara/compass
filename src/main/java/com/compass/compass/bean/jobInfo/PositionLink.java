package com.compass.compass.bean.jobInfo;

import com.compass.compass.bean.Link;

public class PositionLink extends AbstractPosition implements Link {

    private JobInfoDigest relateJob;

    @Override
    public String getUrl() {
        return "/positionInfo/" + positionIndex;
    }

    public JobInfoDigest getRelateJobDigest() {
        return relateJob;
    }

    public void setRelateJobDigest(JobInfoDigest relateJob) {
        this.relateJob = relateJob;
    }

    @Override
    public String getCompanyName() {
        return relateJob.getCompanyName();
    }


}
