package com.docedu.web.admin.controller;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.docedu.web.admin.service.LectureService;
import com.docedu.web.admin.vo.LectureVO;

@Controller
public class LectureController {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	private final LectureService lectureService;

	@Inject
	public LectureController(LectureService lectureService) {
		this.lectureService = lectureService;
	}
	
	@GetMapping("/mainlecture.mdo")
	public String mainlectureGet() {
		return "mainlecture";
	}
	
	@GetMapping("/lectureinsert.mdo")
	public String lectureinsertGet() {
		return "lectureinsert";
	}
	@ResponseBody
    @RequestMapping(value = "/insertlecture.mdo", method = RequestMethod.POST)
	public String insertlectureGet(@ModelAttribute LectureVO lectureVO) {
		sqlSessionTemplate.insert("lecture.lectureinsert",lectureVO);
		return "redirect:/mainlecture.mdo";
	}
}
