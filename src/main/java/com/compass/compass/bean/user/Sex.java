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

    public static Sex strToSex(String inChinese){
        if (inChinese.equals(MALE.inChinese)){
            return MALE;
        }else if (inChinese.equals(FEMALE.inChinese)){
            return FEMALE;
        }else{
            return null;
        }
    }
}
