package com.compass.compass.bean;

/**
 * @author cn
 */
public class CategoryLink implements Link{
    private String category;

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public String getUrl() {
        return "/category/" + category;
    }
}
