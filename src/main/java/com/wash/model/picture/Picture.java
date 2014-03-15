package com.wash.model.picture;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "PICTURE", schema = "CarWash")
public class Picture implements Serializable {

	private static final long serialVersionUID = 208655328884793926L;

	@Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "PICTURE_NAME", nullable = false)
    private String pictureName;

    @Column(name = "PICTURE", columnDefinition = "mediumblob", nullable = false)
    private byte[] picture;

    public Picture() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPictureName() {
        return pictureName;
    }

    public void setPictureName(String imageName) {
        this.pictureName = imageName;
    }

    public byte[] getPicture() {
        return picture;
    }

    public void setPicture(byte[] image) {
        this.picture = image;
    }

}
