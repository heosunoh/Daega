package daega.web.user.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import daega.web.user.svc.UserService;
import daega.web.user.vo.User;

@Controller
public class LoginFormController {
	@Autowired
	private UserService userService;
	@RequestMapping("/loginForm")
	public ModelAndView loginFormForm(Locale locale) {
		ModelAndView result = new ModelAndView();
		List<User> userList = userService.getUsers();
		result.addObject("result", userList);
		result.setViewName("loginForm");
		return result;
	}
	//로그인 처리
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView loginCheck(@ModelAttribute User user, HttpSession session) {
		boolean result = userService.loginCheck(user,session);
		ModelAndView mav = new ModelAndView();
		if(result == true) {
			mav.setViewName("loginForm");
			mav.addObject("msg", "success");
		}else {
			mav.setViewName("loginForm");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	//로그아웃 처리
	@RequestMapping(value="/logout")
	public ModelAndView logout(HttpSession session) {
		userService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("loginForm");
		mav.addObject("msg","logout");
		return mav;
	}
}
