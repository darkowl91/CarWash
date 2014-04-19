package com.wash.mvc.controller;

import java.util.Map;

import javax.validation.Valid;

import com.wash.model.account.registration.RegistrationForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wash.model.account.Authority;
import com.wash.model.account.User;
import com.wash.mvc.controller.converter.UserConverter;
import com.wash.mvc.service.IAuthorityService;
import com.wash.mvc.service.IUserService;
import com.wash.programm.exception.DuplicateEmailException;
import com.wash.programm.exception.DuplicateUsernameException;
import com.wash.programm.security.util.SecurityUtil;

@Controller
public class AccountController {

	private static final String ROLE_USER = "ROLE_USER";

	@Autowired
	private UserConverter userConverter;

	@Autowired
	private IAuthorityService authorityService;

	@Autowired
	private IUserService userService;

	@RequestMapping(value = "/signIn", method = RequestMethod.GET)
	public String signIn(@RequestParam Map<String, String> allRequestParams,
			Model model) {

		String signInError = allRequestParams.get("signInError");
		if (signInError != null) {
			model.addAttribute("signInError", "true");
		}

		return "carWash.signIn";
	}

	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String signUpForm(Model model) {
		model.addAttribute("newUser", new RegistrationForm());
		return "carWash.signUp";
	}

	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String signUp(
			@Valid @ModelAttribute("newUser") RegistrationForm registrationForm,
			BindingResult result) {

		if (result.hasErrors()) {
			return "carWash.signUp";
		}

		User newUser = userConverter.convert(registrationForm);
		Authority authority = authorityService.findByName(ROLE_USER);
		newUser.setAuthority(authority);

		User registered = createUserAccount(newUser, result);

		if (registered == null) {
			return "carWash.signUp";
		}
		SecurityUtil.logInUser(registered);

		return "redirect:/";
	}

	private User createUserAccount(User newUser, BindingResult result) {
		User registered = null;
		
		try {
			registered = userService.register(newUser);
		} catch (DuplicateEmailException ex) {
			addFieldError("newUser", "email", newUser.getEmail(),
					"NotExist.user.email", result);
		} catch (DuplicateUsernameException ex) {
			addFieldError("newUser", "username", newUser.getEmail(),
					"NotExist.user.username", result);
		}

		return registered;
	}

	private void addFieldError(String objectName, String fieldName,
			String fieldValue, String errorCode, BindingResult result) {
		FieldError error = new FieldError(objectName, fieldName, fieldValue,
				false, new String[] { errorCode }, new Object[] {}, errorCode);

		result.addError(error);
	}
}
