package com.docedu.web.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.docedu.web.admin.vo.CarrotVO;
import com.docedu.web.user.service.CarrotService;
import com.docedu.web.user.vo.Criteria;

@Controller
public class CarrotController {
	@Autowired
	private final CarrotService carrotService;

	@Inject
	public CarrotController(CarrotService carrotService) {
		this.carrotService = carrotService;
	}
	@RequestMapping(value = "/carrotlist.do")
	public ModelAndView carrotlistGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		Criteria cr = null;
		List<CarrotVO> showList = new ArrayList<CarrotVO>();
		showList = carrotService.carrotlist(cr);
		mav.addObject("CarrotList", showList);
		return mav;
	}
	@RequestMapping("/carrotview.do")
	public ModelAndView carrotviewGet(@RequestParam int carrot_seq) {
		ModelAndView mav = new ModelAndView();
		CarrotVO carrotVO;
		carrotVO = carrotService.carrotread(carrot_seq);
		mav.addObject("carrot_view", carrotVO);
		return mav;
	}
}
