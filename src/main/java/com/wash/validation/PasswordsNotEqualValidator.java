package com.wash.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import com.wash.validation.annotation.PasswordsNotEqual;
import com.wash.validation.util.ValidatorUtil;

public class PasswordsNotEqualValidator implements ConstraintValidator<PasswordsNotEqual, Object> {

    private String passwordFieldName;

    private String passwordConfirmFieldName;

    @Override
    public void initialize(PasswordsNotEqual constraintAnnotation) {
        this.passwordFieldName = constraintAnnotation.passwordFieldName();
        this.passwordConfirmFieldName = constraintAnnotation.passwordConfirmFieldName();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        context.disableDefaultConstraintViolation();
        try {
            String password = (String) ValidatorUtil.getFieldValue(value, passwordFieldName);
            String passwordConfirm = (String) ValidatorUtil.getFieldValue(value, passwordConfirmFieldName);

            if (passwordsAreNotEqual(password, passwordConfirm)) {
                ValidatorUtil.addValidationError(passwordFieldName, context);
                ValidatorUtil.addValidationError(passwordConfirmFieldName, context);

                return false;
            }
        }
        catch (Exception ex) {
            throw new RuntimeException("Exception occurred during validation", ex);
        }

        return true;
    }

    private boolean passwordsAreNotEqual(String password, String passwordConfirm) {
        return !(password == null ? passwordConfirm == null : password.equals(passwordConfirm));
    }
}
