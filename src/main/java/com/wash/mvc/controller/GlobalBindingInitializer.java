package com.wash.mvc.controller;

import com.wash.model.picture.Picture;
import com.wash.programm.util.DateEditor;
import com.wash.programm.util.PictureEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.InitBinder;

import java.util.Calendar;

@ControllerAdvice
public class GlobalBindingInitializer {

     /* Initialize a global InitBinder for dates */

    @InitBinder
    public void binder(WebDataBinder binder) {
        binder.registerCustomEditor(Calendar.class, new DateEditor());
        binder.registerCustomEditor(Picture.class, new PictureEditor());
    }
}
