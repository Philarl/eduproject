package com.docedu.web.user.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.docedu.web.user.service.WordpdfService;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.WordpdfVO;

@Controller
public class WordpdfController {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Autowired
	private final WordpdfService wordpdfService;
	
	@Inject
	public WordpdfController(WordpdfService wordpdfService) {
		this.wordpdfService = wordpdfService;
	}
	
	@GetMapping("wordinsert.do")
	public String wordinsertGet() {
		return "wordinsert";
	}
	@GetMapping("wordpdflist.do")
	public ModelAndView wordpdflistGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		Criteria Criteria = null;
		List<WordpdfVO> showList = new ArrayList<WordpdfVO>();
		showList = wordpdfService.wordpdflist_page(Criteria);
		mav.addObject("WordpdfList", showList);
		return mav;
	}
	@GetMapping("/wordpdf.do")
	public ModelAndView wordpdfGet(@RequestParam String wpdf_header) {
		ModelAndView mav = new ModelAndView();
		List<Object> wordpdfVO;
		wordpdfVO = wordpdfService.wordpdfread(wpdf_header);
		mav.addObject("wpdf_view", wordpdfVO);
		return mav;
	}
	@GetMapping("/wordpdftest.do")
	public ModelAndView wordpdftestGet(@RequestParam String wpdf_header) {
		ModelAndView mav = new ModelAndView();
		List<Object> wordpdfVO;
		wordpdfVO = wordpdfService.wordpdfread(wpdf_header);
		mav.addObject("wpdf_view", wordpdfVO);
		return mav;
	}
	@ResponseBody
    @RequestMapping(value = "/insertdata.do", method = RequestMethod.POST)
	public List<Map<String, Object>> test(@RequestBody List<Map<String, Object>> param) {
		sqlSessionTemplate.insert("wordpdf.wordpdfinsert",param);
		return param;
	}
}
