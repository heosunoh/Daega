package daega.web.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import daega.web.user.vo.User;

public class UserValidator implements Validator {
	private static final String emailRegExp = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	private Pattern pattern;

	public UserValidator() {
		// TODO Auto-generated constructor stub
		pattern = Pattern.compile(emailRegExp);
	}

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return User.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		User user = (User) target;

		if (user.getUserinfo_email() == null || user.getUserinfo_email().trim().isEmpty()) {
			errors.rejectValue("userinfo_email", "required", "필수 정보 입니다.");
		} else {
			Matcher matcher = pattern.matcher(user.getUserinfo_email());
			if (!matcher.matches()) {
				errors.rejectValue("userinfo_email", "bad", "올바르지 않는 형식입니다.");
			}
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userinfo_nickname", "required", "필수 정보 입니다.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userinfo_id", "required", "필수 정보 입니다.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userinfo_name", "required", "필수 정보 입니다.");
		ValidationUtils.rejectIfEmpty(errors, "userinfo_password", "required", "필수 정보 입니다.");
		ValidationUtils.rejectIfEmpty(errors, "checkPw", "required", "필수 정보 입니다.");
		if (!user.getUserinfo_password().isEmpty()) {
			if (!user.isPwEqualToCheckPw()) {
				errors.rejectValue("checkPw", "nomatch", "비밀번호가 일치하지 않습니다.");
			}
		}
	}
}
