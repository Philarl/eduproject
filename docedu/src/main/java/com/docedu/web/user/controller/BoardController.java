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
import com.docedu.web.admin.vo.TransVO;
import com.docedu.web.user.service.BoardService;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.WordcollectionVO;

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
	public ModelAndView grammarselGet(@RequestParam String grammar_title, Model model) {
		ModelAndView mav = new ModelAndView();
		Criteria Criteria = null;
		List<Object> grammarVO;
		List<WordcollectionVO> showList = new ArrayList<WordcollectionVO>();
		grammarVO = boardService.grammarread(grammar_title);
		showList = boardService.wordcollection(Criteria);
		mav.addObject("showgrammar", grammarVO);
		mav.addObject("showword", showList);
		return mav;
	}
	@RequestMapping(value = "/translist.do")
	public ModelAndView translistGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		Criteria Criteria = null;
		List<TransVO> showList = new ArrayList<TransVO>();
		showList = boardService.showtrans_page(Criteria);
		mav.addObject("TransList", showList);
		return mav;
	}
	
	@GetMapping("/transview.do")
	public ModelAndView transviewGet(@RequestParam String trans_title) {
		ModelAndView mav = new ModelAndView();
		List<Object> transVO;
		transVO = boardService.transread(trans_title);
		mav.addObject("showtrans", transVO);
		return mav;
	}
}