package com.docedu.web.user.service;

import java.util.List;

import com.docedu.web.admin.vo.GrammarVO;
import com.docedu.web.admin.vo.TransVO;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.WordcollectionVO;

public interface BoardService {
	public List<GrammarVO> showgrammar_page(Criteria cr);
	public List<Object> grammarread(String grammar_title);
	public List<TransVO> showtrans_page(Criteria cr);
	public List<WordcollectionVO> wordcollection(Criteria cr);
	public List<Object> transread(String trans_title);
}