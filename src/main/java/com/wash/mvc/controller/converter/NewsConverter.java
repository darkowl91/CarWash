package com.wash.mvc.controller.converter;

import com.wash.model.advertisement.News;
import com.wash.model.advertisement.NewsForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class NewsConverter implements Converter<NewsForm, News> {

    @Autowired
    private DateConverter dateCon;
    @Autowired
    private PictureConverter pictureCon;


    @Override
    public News convert(NewsForm source) {
        News news = new News();
        news.setDate(dateCon.convert(source.getDate()));
        news.setPicture(pictureCon.convert(source.getPicture()));
        news.setTitle(source.getTitle());
        news.setDescription(source.getDescription());
        news.setContent(source.getContent());
        return news;
    }
}
