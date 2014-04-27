package com.wash.mvc.controller;


import com.wash.model.advertisement.News;
import com.wash.model.advertisement.NewsForm;
import com.wash.mvc.controller.converter.NewsConverter;
import com.wash.mvc.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class NewsController {

    @Autowired
    private INewsService service;

    @Autowired
    private NewsConverter newsConverter;

    @RequestMapping(value = "/manageNews", method = RequestMethod.GET)
    public String manageNews(ModelMap model) {

        model.put("NEWS", service.findAll());
        model.put("newsForm", new NewsForm());
        return "carWash.admin.news";
    }

    @RequestMapping(value = "/createNews", method = RequestMethod.POST)
    public String createNews(@Valid NewsForm newsForm,BindingResult result) {
        if (result.hasErrors()){
//            addFieldError(result.getObjectName(),result.get);
            return "carWash.admin.news";
        }
        News news = newsConverter.convert(newsForm);
        service.save(news);



        return "redirect:/manageNews";
    }


    @RequestMapping(value = "/deleteNews", method = RequestMethod.GET)
    public String deleteNews(Long id) {
        service.delete(id);
        return "redirect:/manageNews";
    }

    @RequestMapping(value = "/editNews", method = RequestMethod.GET)
    public String editNews(Long id, ModelMap modelMap) {
        News news = service.findById(id);
        modelMap.put("news", news);
        return "redirect:/createNews";
    }

}
