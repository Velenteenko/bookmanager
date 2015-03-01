package com.itgreeckapp.bookmanager.validator;

import com.itgreeckapp.bookmanager.domain.Books;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by Dmitri on 01.03.2015.
 */

@Component
public class BookValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return Books.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"name","required.name","Name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"genre",".required.genre", "Genre is required.");
    }
}
