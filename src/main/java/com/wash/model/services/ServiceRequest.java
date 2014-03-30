package com.wash.model.services;

import com.wash.model.account.User;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Calendar;

@Entity
@Table(name="SERVICE_REQUEST", schema = "CarWash")
public class ServiceRequest implements Serializable {

	private static final long serialVersionUID = -8735706153008836518L;
	
	@Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(name = "DATE", nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
    private Calendar date;
    
	@ManyToOne( fetch = FetchType.LAZY)
    @JoinColumn(name = "SERVICE_ID", nullable = false)
	private Service service;
    
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USER_ID", nullable = false)
	private User user;
    
    @Column(name = "APPROVED")
    private boolean isApproved;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Calendar getDate() {
        return date;
    }

    public void setDate(Calendar date) {
        this.date = date;
    }

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public boolean isApproved() {
        return isApproved;
    }

    public void setApproved(boolean isApproved) {
        this.isApproved = isApproved;
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
		ServiceRequest other = (ServiceRequest) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
}
