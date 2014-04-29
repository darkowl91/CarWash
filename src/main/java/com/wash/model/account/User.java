package com.wash.model.account;

import com.wash.model.picture.Picture;
import org.hibernate.annotations.BatchSize;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Calendar;
import java.util.List;

@Entity
@Table(name = "USER", schema = "CarWash")
public class User implements Serializable {

	private static final long serialVersionUID = 2353242890222909519L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(name = "USERNAME", nullable = false, unique = true)
	@NotEmpty(message = "{com.wash.model.account.username.notEmpty}")
    @Size(max = 255, message = "{com.wash.model.account.username.size}")
	private String username;

	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "PICTURE_ID")
	private Picture picture;

	@Column(name = "PASSWORD", nullable = false)
	private String password;

	@Column(name = "ENABLED")
	private boolean enabled;

	@Column(name = "EMAIL", nullable = false, unique = true)
	@Email(message = "{com.wash.model.account.email.incorrectEmail}")
    @NotEmpty(message = "{com.wash.model.account.email.notEmpty}")
    @Size(max = 255, message = "{com.wash.model.account.email.size}")
	private String email;

	@Column(name = "FIRSTNAME", nullable = false)
	@NotEmpty(message = "{com.wash.model.account.firstName.notEmpty}")
    @Size(max = 255, message = "{com.wash.model.account.firstName.size}")
	private String firstName;

	@Column(name = "LASTNAME", nullable = false)
	@NotEmpty(message = "{com.wash.model.account.lastName.notEmpty}")
    @Size(max = 255, message = "{com.wash.model.account.lastName.size}")
	private String lastName;

	@Column(name = "BIRTHDAY")
	@Temporal(TemporalType.TIMESTAMP)
	private Calendar birthDay;

	@Column(name = "REGISTRATION_DATE")
	private Calendar registrationDate;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "AUTHORITY_ID", nullable = false)
	private Authority authority;

	@OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@BatchSize(size = 3)
	private List<Phone> phones;

	public User() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Picture getPicture() {
		return picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Calendar getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(Calendar birthDay) {
		this.birthDay = birthDay;
	}

	public Calendar getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Calendar registrationDate) {
		this.registrationDate = registrationDate;
	}

	public List<Phone> getPhones() {
		return phones;
	}

	public void setPhones(List<Phone> phones) {
		this.phones = phones;
	}

	public Authority getAuthority() {
		return authority;
	}

	public void setAuthority(Authority authority) {
		this.authority = authority;
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
		User other = (User) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
}
