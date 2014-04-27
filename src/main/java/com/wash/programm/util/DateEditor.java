package com.wash.programm.util;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.util.Calendar;

public class DateEditor extends PropertyEditorSupport {

    public void setAsText(String value) {
        try {
            setValue(DateUtil.parseDate(value, DateUtil.PATTERN_YYYY_MM_DD));
        } catch (ParseException e) {
            setValue(null);
        }
    }

    public String getAsText() {
        Calendar value = (Calendar) getValue();
        return value != null ? DateUtil.getStrDate(value, DateUtil.PATTERN_YYYY_MM_DD) : "";

    }
}
