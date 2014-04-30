package com.wash.mvc.controller;

import java.security.Principal;
import java.util.Locale;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wash.model.account.Authority;
import com.wash.model.account.Phone;
import com.wash.model.account.User;
import com.wash.model.account.registration.RegistrationForm;
import com.wash.mvc.controller.converter.UserConverter;
import com.wash.mvc.service.IAuthorityService;
import com.wash.mvc.service.IPhoneService;
import com.wash.mvc.service.IUserService;
import com.wash.programm.exception.DuplicateEmailException;
import com.wash.programm.exception.DuplicatePhoneException;
import com.wash.programm.exception.DuplicateUsernameException;
import com.wash.programm.security.util.SecurityUtil;

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
		return "carWash.selfCare";
	}

	@RequestMapping(value = "/selfCare", method = RequestMethod.POST)
	public String updatePersonalInformation(
			@Valid @ModelAttribute("user") User user, BindingResult result,
			Model model) {

		if (result.hasErrors()) {
			model.addAttribute("newPhone", new Phone());
			return "carWash.selfCare";
		}

		user = userService.update(user);

		if (user == null) {
			model.addAttribute("newPhone", new Phone());
			return "carWash.selfCare";
		}

		return "redirect:/selfCare";
	}

	@RequestMapping(value = "/selfCare/uploadPicture", method = RequestMethod.POST)
	public String uploadPhoto(User user) {
		userService.update(user);
		return "redirect:/selfCare";
	}

	@RequestMapping(value = "/selfCare/addPhone", method = RequestMethod.POST)
	public String addPhone(@ModelAttribute("newPhone") Phone newPhone,
			@ModelAttribute("user") User user,
			RedirectAttributes redirectAttributes, BindingResult result,
			Locale locale) {

		if (result.hasErrors()) {
			return "redirect:/selfCare";
		}

		newPhone.setUser(user);
		createPhone(newPhone, redirectAttributes, locale);

		return "redirect:/selfCare";
	}

	@RequestMapping(value = "/selfCare/deletePhone/{id}", method = RequestMethod.GET)
	public String removePhome(@PathVariable("id") Long id) {
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

	private void createPhone(Phone newPhone,
			RedirectAttributes redirectAttributes, Locale locale) {
		try {
			phoneService.save(newPhone);
		} catch (DuplicatePhoneException ex) {
			redirectAttributes.addFlashAttribute("errorMessage",
					messageSource.getMessage("NotExist.phone.value",
							new Object[] {}, locale));
		}
	}

	private void addFieldError(String objectName, String fieldName,
			String fieldValue, String errorCode, BindingResult result) {
		FieldError error = new FieldError(objectName, fieldName, fieldValue,
				false, new String[] { errorCode }, new Object[] {}, errorCode);

		result.addError(error);
	}

	/*
	 * @ExceptionHandler({ MaxUploadSizeExceededException.class })
	 * 
	 * @ResponseStatus(HttpStatus.BAD_REQUEST) public String
	 * handleException(MaxUploadSizeExceededException e) {
	 * 
	 * return "carWash.selfCare"; }
	 */
}
