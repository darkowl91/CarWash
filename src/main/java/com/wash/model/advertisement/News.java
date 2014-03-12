package com.wash.model.advertisement;

import java.util.Calendar;
import java.util.List;

public class News {

    private Long id;
    private Calendar date;
    private String title;
    private String description;
    private String content;
    private List<NewsPicture> pictures;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Calendar getDate() {
        return date;
    }

    public void setDate(Calendar date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public List<NewsPicture> getPictures() {
        return pictures;
    }

    public void setPictures(List<NewsPicture> pictures) {
        this.pictures = pictures;
    }
}
