package com.docedu.web.admin.controller;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.docedu.web.admin.vo.CarrotVO;

@Controller
public class InsertCarrotController {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@GetMapping("/sendcarrot.mdo")
	public String sendcarrotGet() {
		return "sendcarrot";
	}
	@ResponseBody
    @RequestMapping(value = "/insertcarrot.mdo", method = RequestMethod.POST)
	public String insertcarrotGet(@ModelAttribute CarrotVO carrotVO) {
		sqlSessionTemplate.insert("carrot.carrotinsert",carrotVO);
		return "redirect:/sendcarrot.mdo";
	}
	
}
