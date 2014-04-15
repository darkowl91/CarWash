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

	@NotEmpty
    @Size(max = 100)
	private String username;
	
	@NotEmpty
    @Size(max = 100)
	private String password;
	
	@NotEmpty
    @Size(max = 100)
	private String passwordConfirm;
	
	@NotEmpty
    @Size(max = 100)
	private String firstName;
	
	@NotEmpty
    @Size(max = 100)
	private String lastName;
	
	@Email
    @NotEmpty
    @Size(max = 100)
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
