package com.wash.model.services;

import java.math.BigDecimal;
import java.util.Calendar;

public class Service {

    private Long id;
    private String name;
    private String decription;
    private BigDecimal price;
    private Calendar warranty;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Calendar getWarranty() {
        return warranty;
    }

    public void setWarranty(Calendar warranty) {
        this.warranty = warranty;
    }
}
