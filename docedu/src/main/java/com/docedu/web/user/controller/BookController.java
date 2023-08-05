package com.docedu.web.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.java.Log;

@Controller
@Log
public class BookController {
	
	@GetMapping("book_make.do")
	public String book_make() {
		return "book_make";
	}
}
