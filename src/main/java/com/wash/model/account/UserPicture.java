package com.wash.model.account;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "USER_PICTURE", schema = "CarWash")
public class UserPicture implements Serializable {

	private static final long serialVersionUID = 208655328884793926L;

	@Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "PICTURE_NAME")
    private String pictureName;

    @Column(name = "PICTURE", columnDefinition = "mediumblob")
    private byte[] picture;

    public UserPicture() {
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
