package com.joripcom.controller;

import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.joripcom.domain.TeacherReportVO;
import com.joripcom.service.TeacherReportService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class TeacherReportController {
	@Setter(onMethod_ = {@Autowired})
	private TeacherReportService teacherReportService;
	
	@GetMapping("/main")
	public void mainPage(Model model, RedirectAttributes rttr) {
		List<TeacherReportVO> teacher_list = teacherReportService.teacher_list();
		model.addAttribute("t_list", teacher_list);
	}
	
	@GetMapping("/teacher")
	public void teacherPage(@RequestParam String teacher, Model model) {
		List<TeacherReportVO> class_list = teacherReportService.class_list(teacher);
		model.addAttribute("c_list", class_list);
		model.addAttribute("teacher", teacher);
	}
	
	@GetMapping("/newReport")
	public void newReport() {
	}
	
	@GetMapping("/teacherReport")
	public void teacherReport(@RequestParam String teacher, @RequestParam String c_name, Model model) {
		model.addAttribute("tRvo", teacherReportService.getReport(teacher, c_name));
	}
	
	@PostMapping("/teacherReport")
	public String postReport(TeacherReportVO vo, RedirectAttributes rttr, HttpServletRequest req) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		teacherReportService.saveReport(vo);
		rttr.addFlashAttribute("msg", "saved");
		
		String teacher = URLEncoder.encode(vo.getTeacher(), "UTF-8");
		String c_name = URLEncoder.encode(vo.getC_name(), "UTF-8");
//		log.info(teacher);
//		log.info(c_name);
		
		return "redirect:/teacherReport?teacher=" + teacher + "&c_name=" + c_name;
	}

}
