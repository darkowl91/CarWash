package com.wash.model.registration;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.wash.validation.annotation.PasswordsNotEqual;

@PasswordsNotEqual(
        passwordFieldName = "password",
        passwordConfirmFieldName = "passwordConfirm"
)
public class RegistrationForm {

	@NotEmpty(message = "{com.wash.model.registration.username.notEmpty}")
    @Size(max = 255, message = "{com.wash.model.registration.username.size}")
	private String username;
	
	@NotEmpty(message = "{com.wash.model.registration.password.notEmpty}")
    @Size(max = 255, message = "{com.wash.model.registration.password.size}")
	private String password;
	
	private String passwordConfirm;
	
	@NotEmpty(message = "{com.wash.model.registration.firstName.notEmpty}")
    @Size(max = 255, message = "{com.wash.model.registration.firstName.size}")
	private String firstName;
	
	@NotEmpty(message = "{com.wash.model.registration.lastName.notEmpty}")
    @Size(max = 255, message = "{com.wash.model.registration.lastName.size}")
	private String lastName;
	
	@Email(message = "{com.wash.model.registration.email.incorrectEmail}")
	@NotEmpty(message = "{com.wash.model.registration.email.notEmpty}")
    @Size(max = 255, message = "{com.wash.model.registration.email.size}")
	private String email;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordConfirm() {
		return passwordConfirm;
	}

	public void setPasswordConfirm(String passwordConfirm) {
		this.passwordConfirm = passwordConfirm;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
