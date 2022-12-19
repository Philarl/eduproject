package com.docedu.web.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminCommonController {
	@GetMapping("/adminmenu.mdo")
	public String adminmenuGet() {
		return "adminmenu";
	}
	@GetMapping("/accessadmin.mdo")
	public String accessadminGet() {
		return "accessadmin";
	}
	@GetMapping("/assignmentclass.mdo")
	public String assignmentclassGet() {
		return "assignmentclass";
	}
	@GetMapping("/sendmessage.mdo")
	public String sendmessageGet() {
		return "sendmessage";
	}
	@GetMapping("/supplement.mdo")
	public String supplementGet() {
		return "supplement";
	}
	@GetMapping("/tables.mdo")
	public String tablesGet() {
		return "tables";
	}
}