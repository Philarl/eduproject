package com.docedu.web.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CarrotController {
	@GetMapping("/sendcarrot.mdo")
	public String sendcarrotGet() {
		return "sendcarrot";
	}
}
