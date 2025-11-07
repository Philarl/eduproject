package com.docedu.web.user.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.docedu.web.user.service.CastleService;
import com.docedu.web.user.vo.CastleDetailVO;
import com.docedu.web.user.vo.GrammarCastleDetailVO;
import com.docedu.web.user.vo.ReadingCastleVO;

import lombok.extern.java.Log;

@Controller
@Log
public class CastleController {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Autowired
	private final CastleService castleService;
	
	@Inject
	public CastleController(CastleService castleService) {
		this.castleService = castleService;
	}
	
	@GetMapping("/grammarCastleDetail.do")
	public ModelAndView grammarCastleDetail(Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();
		List<GrammarCastleDetailVO> list = null;
		// list = castleService.grammarCastleDetail(map);
		mav.addObject("list", list);
		return mav;
	}
	
	@GetMapping("/readingcastle.do")
	public ModelAndView readingCastle(String address) {
		log.info(address);
		ModelAndView mav = new ModelAndView();
		List<ReadingCastleVO> list = castleService.readingCastle(address);
		log.info("controller");
		mav.addObject("list", list);
		return mav;
	}
	
	@GetMapping("/readingCastleTest.do")
	public ModelAndView readingCastleTest() {
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}

	@PostMapping("/readingCastleTest.do")
	public void readingCastleInsert(@RequestParam Map<String, Object> map) {
		log.info(map.toString());
		String school = (String) map.get("school_name") + map.get("school_type");
		map.put("school", school);
	}
	
	@GetMapping("/readingCastleDetail.do")
	public ModelAndView readingCastleDetail(Map<String, Object> map) {
		log.info(map.toString());
		ModelAndView mav = new ModelAndView();
		List<CastleDetailVO> list = castleService.readingCastleDetail(map);
		log.info("controller");
		mav.addObject("list", list);
		return mav;
	}
}
