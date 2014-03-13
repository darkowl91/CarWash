package com.wash.model.advertisement;

import java.io.Serializable;
import java.util.Calendar;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="NEWS", schema = "CarWash")
public class News implements Serializable {

	private static final long serialVersionUID = 5618996323287858344L;
	
	@Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(name = "DATE")
	@Temporal(TemporalType.TIMESTAMP)
    private Calendar date;
	
	@Column(name = "TITLE")
    private String title;
	
	@Column(name = "DECRIPTION")
    private String description;
	
	@Column(name = "CONTENT")
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
