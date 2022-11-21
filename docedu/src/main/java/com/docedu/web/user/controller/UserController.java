package com.docedu.web.user.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.docedu.web.user.service.UserService;
import com.docedu.web.user.vo.UserVO;

@Controller
public class UserController {
	@Autowired
	private final UserService userService;

	@Inject
	public UserController(UserService userService) {
		this.userService = userService;
	}
	@GetMapping("userlogin.do")
	public String userloginGet() {
		return "userlogin";
	}
	@GetMapping("/usersignin.do")
	public String userGet() {
		return "usersignin";
	}
	@RequestMapping("/loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute UserVO userVO, HttpSession session) {
		boolean result = userService.loginCheck(userVO, session);
		ModelAndView mav = new ModelAndView();
		if(result == true) {
			mav.setViewName("userindex");
			mav.addObject("msg", "success");
			mav.addObject("user", result);
			session.setAttribute("user", result);
		}else {
			mav.setViewName("userlogin");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	@GetMapping("/userlogout.do")
	public ModelAndView userlogout(HttpSession session) {
		userService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("userindex");
		mav.addObject("msg", "logout");
		return mav;
	}
	
	@GetMapping("/userindex.do")
	public String userindexGet() {
		return "userindex";
	}
	
	@RequestMapping(value = "/user_register.do", method = RequestMethod.POST)
	public String en_insertGet(@ModelAttribute UserVO userVO) {
		userService.userregister(userVO);
//		System.out.println(ad_encyVO.toString());
		return "redirect:/userlogin.do";
	}
}
