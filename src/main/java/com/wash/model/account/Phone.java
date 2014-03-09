package com.wash.model.account;

import com.wash.model.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "PHONE", schema = "carservice")
public class Phone extends BaseEntity {

    @Column(name = "OPERATOR")
    private String operator;

    @Column(name = "PHONE_VALUE")
    private String phoneValue;

    @Column(name = "PHONE_TYPE")
    private String type;

    @ManyToOne
    private User user;

    public Phone() {
    }

    public Phone(String operator, String phoneValue, String type, User user) {
        this.operator = operator;
        this.phoneValue = phoneValue;
        this.type = type;
        this.user = user;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }


    public String getPhoneValue() {
        return phoneValue;
    }

    public void setPhoneValue(String phoneValue) {
        this.phoneValue = phoneValue;
    }


    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
