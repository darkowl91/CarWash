package com.wash.mvc.controller;


import com.wash.mvc.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewsController {

    @Autowired
    private INewsService service;

    @RequestMapping(value = "/manageNews", method = RequestMethod.GET)
    public String manageNews(ModelMap model) {
        model.put("NEWS", service.findAll());
        return "carWash.admin.news";
    }
}
