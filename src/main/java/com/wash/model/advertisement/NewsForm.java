package com.wash.model.advertisement;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.Size;

public class NewsForm {

    @NotEmpty(message = "{com.wash.model.advertisement.NewsForm.date.notEmpty}")
    @Size(max = 255, message = "{com.wash.model.advertisement.NewsForm.date.size}")
    @DateTimeFormat(pattern = "dd/mm/yyyy")
    private String date;

    @NotEmpty(message = "{com.wash.model.advertisement.NewsForm.title.notEmpty}")
    @Size(max = 255, min = 10, message = "{com.wash.model.advertisement.NewsForm.title.size}")
    private String title;

    @NotEmpty(message = "{com.wash.model.advertisement.NewsForm.description.notEmpty}")
    @Size(max=255, min = 10, message = "{com.wash.model.advertisement.NewsForm.description.size}")
    private String description;

    @NotEmpty(message = "{com.wash.model.advertisement.NewsForm.content.notEmpty}")
    @Size(max=1024, min = 10, message = "{com.wash.model.advertisement.NewsForm.content.size}")
    private String content;


    private MultipartFile picture;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
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

    public MultipartFile getPicture() {
        return picture;
    }

    public void setPicture(MultipartFile picture) {
        this.picture = picture;
    }
}
