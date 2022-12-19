package com.docedu.web.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.docedu.web.admin.vo.GrammarVO;
import com.docedu.web.user.service.BoardService;
import com.docedu.web.user.vo.Criteria;

@Controller
public class BoardController {
	@Autowired
	private final BoardService boardService;
	
	@Inject
	public BoardController(BoardService boardService) {
		this.boardService = boardService;
	}
	@RequestMapping(value = "/grammarlist.do")
	public ModelAndView grammarlistGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		Criteria Criteria = null;
		List<GrammarVO> showList = new ArrayList<GrammarVO>();
		showList = boardService.showgrammar_page(Criteria);
		mav.addObject("GrammarList", showList);
		return mav;
	}
	
	@GetMapping("/grammarsel.do")
	public ModelAndView grammarselGet(@RequestParam String grammar_title) {
		ModelAndView mav = new ModelAndView();
		List<Object> grammarVO;
		grammarVO = boardService.grammarread(grammar_title);
		mav.addObject("showgrammar", grammarVO);
		return mav;
	}
}
