package com.wash.programm.util;


import com.wash.model.picture.Picture;
import org.springframework.beans.propertyeditors.ByteArrayPropertyEditor;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public class PictureEditor extends ByteArrayPropertyEditor {

    @Override
    public void setValue(Object value) {
        if (value instanceof MultipartFile) {
            MultipartFile multipartFile = (MultipartFile) value;
            try {
                super.setValue(new Picture(multipartFile.getBytes(), multipartFile.getOriginalFilename()));
            } catch (IOException ex) {
                throw new IllegalArgumentException("Cannot read contents of multipart file", ex);
            }
        } else if (value instanceof byte[]) {
            super.setValue(new Picture((byte[]) value, "Unnamed"));
        } else {
            if (value != null) super.setValue(new Picture(value.toString().getBytes(), "Unnamed"));
            else super.setValue(null);
        }
    }

    @Override
    public String getAsText() {
        Picture picture = (Picture) (getValue());
        return picture != null ? picture.getImageAsString() : "";
    }
}
