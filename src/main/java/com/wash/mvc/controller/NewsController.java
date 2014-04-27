package com.wash.mvc.controller;


import com.wash.model.advertisement.News;
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
        model.put("NEWS_LIST", service.findAll());
        model.put("news", new News());
        return "carWash.admin.news";
    }

    @RequestMapping(value = "/createNews", method = RequestMethod.POST)
    public String createNews(News news) {
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
        return "carWash.admin.news";
    }

}
