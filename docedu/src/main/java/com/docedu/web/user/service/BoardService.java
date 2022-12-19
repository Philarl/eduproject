package com.docedu.web.user.service;

import java.util.List;

import com.docedu.web.admin.vo.GrammarVO;
import com.docedu.web.user.vo.Criteria;

public interface BoardService {
	public List<GrammarVO> showgrammar_page(Criteria cr);
	public List<Object> grammarread(String grammar_title);
}