package com.wash.model.account;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "PHONE", schema = "CarWash")
public class Phone implements Serializable {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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
