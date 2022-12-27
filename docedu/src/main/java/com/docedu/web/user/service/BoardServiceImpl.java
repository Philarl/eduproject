package com.docedu.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.admin.vo.GrammarVO;
import com.docedu.web.admin.vo.TransVO;
import com.docedu.web.user.dao.BoardDAO;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.WordcollectionVO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List<GrammarVO> showgrammar_page(Criteria cr) {
		return boardDAO.showgrammar_page(cr);
	}
	@Override
	public List<Object> grammarread(String grammar_title) {
		return boardDAO.grammarread(grammar_title);
	}
	@Override
	public List<TransVO> showtrans_page(Criteria cr) {
		return boardDAO.showtrans_page(cr);
	}
	@Override
	public List<WordcollectionVO> wordcollection(Criteria cr) {
		return boardDAO.wordcollection(cr);
	}
	@Override
	public List<Object> transread(String trans_title) {
		return boardDAO.transread(trans_title);
	}
}
