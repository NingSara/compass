package com.compass.compass.bean;


import com.compass.compass.bean.jobInfo.PositionLink;

import java.time.LocalDateTime;

/**
 * @author cn
 */
public class MarkedPosition {
    private PositionLink positionLink;

    private LocalDateTime markTime;

    public void setPositionLink(PositionLink positionLink) {
        this.positionLink = positionLink;
    }

    public LocalDateTime getMarkTime() {
        return markTime;
    }

    public void setMarkTime(LocalDateTime markTime) {
        this.markTime = markTime;
    }

    public PositionLink getPositionLink(){
        return positionLink;
    }
}
