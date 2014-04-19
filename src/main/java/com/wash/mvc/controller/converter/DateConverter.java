package com.wash.mvc.controller.converter;

import com.wash.programm.util.DateUtil;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.util.Calendar;

@Component
public final class DateConverter implements Converter<String, Calendar> {
    @Override
    public Calendar convert(String source) {
        Calendar calendar = null;
        try {
            calendar = DateUtil.parseDate(source, DateUtil.PATTERN_YYYY_MM_DD);
        } catch (ParseException ignored) {
            // TODO: process Exception
        }
        return calendar;
    }
}
