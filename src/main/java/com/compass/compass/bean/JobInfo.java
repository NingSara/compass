package com.compass.compass.bean;

public class JobInfo {
    private long id;
    private String title;
    private String originalUrl;
    private String type;
    private String beginDate;
    private String endDate;
    private String deliverUrl;
    private String employUrl;
    private String companyName;
    private String welfare;
    private String positionText;

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
}
