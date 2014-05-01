package com.wash.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.web.multipart.MultipartFile;

import com.wash.validation.annotation.MultipartFileSize;

public class MultipartFileSizeValidator implements
		ConstraintValidator<MultipartFileSize, MultipartFile> {

	private long maxSize;

	@Override
	public void initialize(MultipartFileSize constraintAnnotation) {
		this.maxSize = constraintAnnotation.maxSize();
	}

	@Override
	public boolean isValid(MultipartFile multipartFile,	ConstraintValidatorContext context) {

		if (multipartFile.getSize() > (maxSize * 1024)) {
			return false;
		}

		return true;
	}
}
