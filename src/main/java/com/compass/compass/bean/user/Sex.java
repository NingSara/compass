package com.compass.compass.bean.user;

/**
 * @author cn
 */
public enum Sex {
    MALE("男"),
    FEMALE("女");

    String inChinese;

    private Sex(String inChinese){
        this.inChinese = inChinese;
    }

    public static Sex toSex(String sex){
        if (sex.equals("男")){
            return MALE;
        }else if (sex.equals("女")){
            return FEMALE;
        }else{
            return null;
        }
    }

}
