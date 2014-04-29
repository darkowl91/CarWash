package com.wash.programm.util;

import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.commons.lang.time.DateUtils;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

public class DateEditor extends PropertyEditorSupport {

    public void setAsText(String value) {
        try {
            Date date = DateUtils.parseDate(value, new String[]{
                    DateFormatUtils.ISO_DATETIME_FORMAT.getPattern(),
                    DateFormatUtils.ISO_DATE_FORMAT.getPattern(),
                    DateFormatUtils.ISO_TIME_FORMAT.getPattern(),
                    DateFormatUtils.ISO_DATE_TIME_ZONE_FORMAT.getPattern(),
                    DateFormatUtils.ISO_DATETIME_TIME_ZONE_FORMAT.getPattern(),
                    DateFormatUtils.ISO_TIME_NO_T_FORMAT.getPattern(),
                    DateFormatUtils.ISO_TIME_NO_T_TIME_ZONE_FORMAT.getPattern()
            });

            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            setValue(calendar);
        } catch (ParseException e) {
            setValue(null);
        }
    }

    public String getAsText() {
        Calendar value = (Calendar) getValue();
        return value != null ? DateFormatUtils.format(value, DateFormatUtils.ISO_DATE_FORMAT.getPattern()) : "";

    }
}
