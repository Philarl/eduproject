package com.docedu.web.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommonController {
	@GetMapping("/studentschedule.do")
	public String studentscheduleGet() {
		return "studentschedule";
	}
}
