package com.wash.model.services;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="NEWS", schema = "CarWash")
public class Service implements Serializable {

	private static final long serialVersionUID = 3792767138034857843L;

	@Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
	
	@Column(name = "NAME")
    private String name;
	
	@Column(name = "DECRIPTION")
    private String decription;
	
	@Column(name = "PRICE")
	private BigDecimal price;
    
	@Column(name = "WARRANTY")
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
