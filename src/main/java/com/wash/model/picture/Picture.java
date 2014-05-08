package com.wash.model.picture;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import com.wash.programm.util.ImageUtil;

@Entity
@Table(name = "PICTURE", schema = "CarWash")
public class Picture implements Serializable {

	private static final long serialVersionUID = 208655328884793926L;

	@Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "PICTURE_NAME", nullable = false)
    @Pattern(regexp="([^\\s]+(\\.(?i)(jpg|png|gif|bmp))$)")
    private String pictureName;

    @Column(name = "PICTURE", columnDefinition = "mediumblob", nullable = false)
    @Size(max = 1048576)
    @NotEmpty
    private byte[] picture;

    @Transient
    private String imageAsString;

    public Picture() {
    }

    public Picture(byte[] picture, String pictureName) {
        this.picture = picture;
        this.pictureName = pictureName;
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

    public String getImageAsString(){
        return ImageUtil.getEncoded(picture,ImageUtil.ISO,"");
    }
}
