package com.docedu.web.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.docedu.web.admin.service.AdminService;
import com.docedu.web.admin.vo.AdminVO;

@Controller
public class AdminController {

	@Autowired
	private final AdminService adminService;

	@Inject
	public AdminController(AdminService adminService) {
		this.adminService = adminService;
	}
	
	@GetMapping("/index.mdo")
	public String indexGet() {
		return "index";
	}
	@GetMapping("/adminlogin.mdo")
	public String adminloginGet() {
		return "adminlogin";
	}
	@GetMapping("/adminsignin.mdo")
	public String adminsigninGet() {
		return "adminsignin";
	}
	@GetMapping("/admininfor.mdo")
	public String admininforGet() {
		return "admininfor";
	}
	@RequestMapping("/adminloginCheck.mdo")
	public ModelAndView adminloginCheck(@ModelAttribute AdminVO adminVO, HttpSession session) {
		boolean result = adminService.adminloginCheck(adminVO, session);
		ModelAndView mav = new ModelAndView();
		if(result == true) {
			mav.setViewName("adminmenu");
			mav.addObject("msg", "success");
			mav.addObject("admin", result);
			session.setAttribute("admin", result);
		}else {
			mav.setViewName("adminlogin");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	@GetMapping("/adminlogout.do")
	public ModelAndView userlogout(HttpSession session) {
		adminService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminlogin");
		mav.addObject("msg", "logout");
		return mav;
	}
	@RequestMapping(value = "/admin_register.do", method = RequestMethod.POST)
	public String en_insertGet(@ModelAttribute AdminVO adminVO) {
		adminService.adminregister(adminVO);
//		System.out.println(ad_encyVO.toString());
		return "redirect:/adminlogin.do";
	}
}
