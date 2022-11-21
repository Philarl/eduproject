package com.docedu.web.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.docedu.web.user.service.BoardService;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.PrintimsiVO;

@Controller
public class BoardController {
	@Autowired
	private final BoardService boardService;
	
	@Inject
	public BoardController(BoardService boardService) {
		this.boardService = boardService;
	}
	@RequestMapping(value = "/home.do")
	public ModelAndView ad_encyclopediaGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		Criteria Criteria = null;
		List<PrintimsiVO> showList = new ArrayList<PrintimsiVO>();
		showList = boardService.printboard_page(Criteria);
		mav.addObject("PrintBoardList", showList);
		return mav;
	}
	
	@RequestMapping("/printimsi.do")
	public ModelAndView printboardGet(@RequestParam int pi_seq) {
		ModelAndView mav = new ModelAndView();
		PrintimsiVO printimsiVO;
		printimsiVO = boardService.piread(pi_seq);
		mav.addObject("print_view", printimsiVO);
		return mav;
	}
	
	@RequestMapping(value = "/insertimsi.do", method = RequestMethod.POST)
	public String en_insertGet(@ModelAttribute PrintimsiVO printimsiVO) {
		boardService.printInsert(printimsiVO);
//		System.out.println(ad_encyVO.toString());
		return "redirect:/home.do";
	}
}
