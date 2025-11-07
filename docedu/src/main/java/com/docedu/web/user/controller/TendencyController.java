package com.docedu.web.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.docedu.web.user.service.TendencyService;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.TendencyVO;

import lombok.extern.java.Log;

@Controller
@Log
public class TendencyController {
	@Autowired
	private final TendencyService tendencyService;
	
	@Inject
	public TendencyController(TendencyService tendencyService) {
		this.tendencyService = tendencyService;
	}
	
	@GetMapping("/tendencytest.do")
	public String tendencytestGet() {
		return "tendencytest";
	}
	
	@RequestMapping(value = "/inserttendency.do", method = RequestMethod.POST)
	public String ten_insertGet(@ModelAttribute TendencyVO tendencyVO) {
		tendencyService.tendencyInsert(tendencyVO);
		return "redirect:/tendencyboard.do";
	}
	@RequestMapping(value = "/tendencyboard.do")
	public ModelAndView tendencylistGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		Criteria Criteria = null;
		List<TendencyVO> tenList = new ArrayList<TendencyVO>();
		tenList = tendencyService.tendencylist(Criteria);
		mav.addObject("TendencyList", tenList);
		return mav;
	}
	@RequestMapping("/tendencyresult.do")
	public ModelAndView tendencyresultGet(@RequestParam int tendency_seq) {
		ModelAndView mav = new ModelAndView();
		TendencyVO tendencyVO;
		tendencyVO = tendencyService.tendencyresult(tendency_seq);
		mav.addObject("tendencyresult", tendencyVO);
		return mav;
	}
	@RequestMapping("/tendencyGetNext.do")
	public ModelAndView tendencyresultGetNext(@RequestParam int tendency_seq, @RequestParam String aval, @RequestParam String aval2,
			@RequestParam String hval, @RequestParam String hval2, @RequestParam String rval, @RequestParam String rval2,
			@RequestParam String eval, @RequestParam String eval2) {
		Map map = new HashMap();
		map.put("tendency_seq", tendency_seq);
		if(aval != "") {
			map.put("aval", aval);
			map.put("aval2", aval2);
		}
		if(hval != "") {
			map.put("hval", hval);
			map.put("hval2", hval2);
		}
		if(rval != "") {
			map.put("rval", rval);
			map.put("rval2", rval2);
		}
		if(eval != "") {
			map.put("eval", eval);
			map.put("eval2", eval2);
		}
		log.info(map.toString());
		tendencyService.tendencyGetNext(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("tendency_seq", tendency_seq);
		return mav;
	}
	@RequestMapping("/tendencydelete.do")
	public String tendencydelete(@RequestParam int tendency_seq) {
		tendencyService.tendencydelete(tendency_seq);
		return "redirect:/tendencyboard.do";
	}
}
