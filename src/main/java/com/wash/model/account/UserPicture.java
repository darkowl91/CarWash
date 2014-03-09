package com.wash.model.account;

import com.wash.model.BaseEntity;
import com.wash.programm.util.ImageUtil;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "USER_PICTURE", schema = "carservice")
public class UserPicture extends BaseEntity {

    @Column(name = "PICTURE_NAME")
    private String pictureName;

    @Column(name = "IMAGE", columnDefinition = "mediumblob")
    private byte[] image;

    @Transient
    private String imageAsString;

    public UserPicture() {
    }

    public String getPictureName() {
        return pictureName;
    }

    public void setPictureName(String pictureName) {
        this.pictureName = pictureName;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getImageAsString() {
        return ImageUtil.getInstance().getEncoded(image, "");
    }
}
