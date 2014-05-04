package com.wash.mvc.controller;

import com.wash.model.account.Authority;
import com.wash.model.account.Phone;
import com.wash.model.account.User;
import com.wash.model.account.registration.RegistrationForm;
import com.wash.model.picture.Picture;
import com.wash.model.picture.UploadPicture;
import com.wash.mvc.controller.converter.UserConverter;
import com.wash.mvc.service.IAuthorityService;
import com.wash.mvc.service.IPhoneService;
import com.wash.mvc.service.IUserService;
import com.wash.programm.exception.DuplicateEmailException;
import com.wash.programm.exception.DuplicatePhoneException;
import com.wash.programm.exception.DuplicateUsernameException;
import com.wash.programm.security.util.SecurityUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

import java.io.IOException;
import java.security.Principal;
import java.util.Locale;
import java.util.Map;

@Controller
@SessionAttributes("user")
public class AccountController {

	private static final String ROLE_USER = "ROLE_USER";

	@Autowired
	private UserConverter userConverter;

	@Autowired
	private IAuthorityService authorityService;

	@Autowired
	private IPhoneService phoneService;

	@Autowired
	private IUserService userService;

	@Autowired
	private MessageSource messageSource;

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

	@RequestMapping(value = "/selfCare", method = RequestMethod.GET)
	public String selfCareForm(Model model, Principal principal) {
		User user = userService.findByUsername(principal.getName());
		model.addAttribute("user", user);
		model.addAttribute("newPhone", new Phone());
		model.addAttribute("uploadPicture", new UploadPicture());
		return "carWash.selfCare";
	}

	@RequestMapping(value = "/selfCare", method = RequestMethod.POST)
	public String updatePersonalInformation(
			@Valid @ModelAttribute("user") User user, BindingResult result,
			Model model) {

		if (result.hasErrors()) {
			model.addAttribute("newPhone", new Phone());
			model.addAttribute("uploadPicture", new UploadPicture());
			return "carWash.selfCare";
		}

		user = userService.update(user);

		if (user == null) {
			model.addAttribute("newPhone", new Phone());
			model.addAttribute("uploadPicture", new UploadPicture());
			return "carWash.selfCare";
		}

		return "redirect:/selfCare";
	}

	@RequestMapping(value = "/selfCare/uploadPicture", method = RequestMethod.POST)
	public String uploadPhoto(@ModelAttribute("user") User user,
			@Valid @ModelAttribute("uploadPicture") UploadPicture uploadPicture,
			BindingResult result, Model model) throws IOException {

		if (result.hasErrors()) {
			model.addAttribute("newPhone", new Phone());
			return "carWash.selfCare";
		}
		
		Picture picture = new Picture();
		picture.setPicture(uploadPicture.getFile().getBytes());
		picture.setPictureName(uploadPicture.getFile().getOriginalFilename());		
		user.setPicture(picture);

		userService.update(user);
		return "redirect:/selfCare";
	}

	@RequestMapping(value = "/selfCare/addPhone", method = RequestMethod.POST)
	public String addPhone(@ModelAttribute("newPhone") Phone newPhone,
			@ModelAttribute("user") User user, BindingResult result,
			Model model, Locale locale) {

		if (result.hasErrors()) {
			return "carWash.selfCare";
		}

		newPhone.setUser(user);
		newPhone = createPhone(newPhone, model, locale);

		if (newPhone == null) {
			model.addAttribute("newPhone", new Phone());
			model.addAttribute("uploadPicture", new UploadPicture());
			return "carWash.selfCare";
		}

		return "redirect:/selfCare";
	}

	@RequestMapping(value = "/selfCare/deletePhone/{id}", method = RequestMethod.GET)
	public String removePhone(@PathVariable("id") Long id) {
		phoneService.delete(id);
		return "redirect:/selfCare";
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

	private Phone createPhone(Phone newPhone, Model model, Locale locale) {
		Phone phone = null;
		try {
			phone = phoneService.save(newPhone);
		} catch (DuplicatePhoneException ex) {
			model.addAttribute("errorMessage", messageSource.getMessage(
					"NotExist.phone.value", new Object[] {}, locale));
		}
		return phone;
	}

	private void addFieldError(String objectName, String fieldName,
			String fieldValue, String errorCode, BindingResult result) {
		FieldError error = new FieldError(objectName, fieldName, fieldValue,
				false, new String[] { errorCode }, new Object[] {}, errorCode);

		result.addError(error);
	}
}
