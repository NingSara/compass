package com.compass.compass.bean;

/**
 * @author cn
 */
public class CategoryLink implements Link{
    private String categoryName;

    private int positionNum;

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getPositionNum() {
        return positionNum;
    }

    public void setPositionNum(int positionNum) {
        this.positionNum = positionNum;
    }

    @Override
    public String getUrl() {
        return "/category/" + categoryName;
    }

    @Override
    public String toString() {
        return "CategoryLink{" +
                "category='" + categoryName + '\'' +
                '}';
    }
}
