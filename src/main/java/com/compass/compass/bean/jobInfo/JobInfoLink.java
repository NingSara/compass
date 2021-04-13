package com.compass.compass.bean.jobInfo;

import com.compass.compass.bean.Link;

/**
 * @author cn
 *
 */
@Deprecated
public class JobInfoLink extends JobInfoDigest implements Link {

    @Override
    public String getUrl() {
        return "/jobInfo/" + getId();
    }
}
