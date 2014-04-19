package com.wash.mvc.controller.converter;

import com.wash.model.picture.Picture;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Component
public final class PictureConverter implements Converter<MultipartFile, Picture> {

    @Override
    public Picture convert(MultipartFile source) {
        Picture picture = new Picture();
        try {
            picture.setPicture(source.getBytes());
            picture.setPictureName(source.getName());
        } catch (IOException ignored) {
           //TODO: process Exception
        }
        return picture;

    }
}
