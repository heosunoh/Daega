package daega.web.user.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import daega.web.exception.AlreadyExistingEmailException;
import daega.web.exception.AlreadyExistingIdException;
import daega.web.exception.AlreadyExistingNicknameException;
import daega.web.user.svc.UserService;
import daega.web.user.vo.User;
import daega.web.validator.UserValidator;

@Controller

public class SignUpController {
	@Autowired
	private UserService userService;
	@RequestMapping("/signupForm")
	public ModelAndView signupForm() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", new User());
		mv.setViewName("signupForm");
		return mv;
	}
	@RequestMapping(value="/insertUser",method=RequestMethod.POST)
	public ModelAndView addUser(User user, Errors errors) throws Exception {
		new UserValidator().validate(user, errors);
		//오류 발생시 다시
		if(errors.hasErrors()) {
			ModelAndView mv = new ModelAndView("signupForm");
			return mv;
		}
		try {
			userService.addUser(user);
		} catch(AlreadyExistingEmailException e) {
			errors.rejectValue("userinfo_email", "duplicate","이미 가입된 이메일입니다.");
			ModelAndView mv = new ModelAndView("signupForm");
			return mv;
		} catch(AlreadyExistingIdException e) {
			errors.rejectValue("userinfo_id", "duplicate","이미 가입된 아이디입니다.");
			ModelAndView mv = new ModelAndView("signupForm");
			return mv;
		} catch(AlreadyExistingNicknameException e) {
			errors.rejectValue("userinfo_nickname", "duplicate","이미 있는 닉네임입니다.");
			ModelAndView mv = new ModelAndView("signupForm");
			return mv;
		}
		System.out.println("insert complete");
		ModelAndView mv = new ModelAndView("loginForm");
		return mv;
	}
}
