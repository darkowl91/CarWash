package com.wash.mvc.controller.api;

import com.google.common.collect.Lists;
import com.wash.model.advertisement.News;
import com.wash.mvc.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("api/news")
public class NewsApiController {

    @Autowired
    private INewsService newsService;

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public List<News> newsList() {
        List<News> all = newsService.findAll();
        if (all.size() >= 2) {
            Collections.shuffle(all);
            return Lists.newArrayList(all.get(0), all.get(1));
        } else {
            return all;
        }
    }
}
