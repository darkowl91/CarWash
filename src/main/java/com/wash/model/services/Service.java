package com.wash.model.services;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="SERVICE", schema = "CarWash")
public class Service implements Serializable {

	private static final long serialVersionUID = 3792767138034857843L;

	@Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
	
	@Column(name = "NAME", nullable = false)
    private String name;
	
	@Column(name = "DECRIPTION")
    private String decription;
	
	@Column(name = "PRICE", nullable = false)
	private BigDecimal price;
    
	@Column(name = "WARRANTY")
	private Calendar warranty;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SERVICE_REQUEST_ID", nullable = false)
	private ServiceRequest serviceRequest;

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

	public ServiceRequest getServiceRequest() {
		return serviceRequest;
	}

	public void setServiceRequest(ServiceRequest serviceRequest) {
		this.serviceRequest = serviceRequest;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Service other = (Service) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
}
