package com.wash.programm.util;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * Created by Owl.
 */
public class DateEditor extends PropertyEditorSupport {

    public void setAsText(String value) {
        try {
            setValue(DateUtil.parseDate(value, DateUtil.PATTERN_YYYY_MM_DD));
        } catch (ParseException e) {
            setValue(null);
        }
    }

    public String getAsText() {
        String s = "";
        if (getValue() != null) {
            s = new SimpleDateFormat(DateUtil.PATTERN_YYYY_MM_DD).format(getValue());
        }
        return s;
    }
}
