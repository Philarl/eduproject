package com.docedu.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.admin.vo.GrammarVO;
import com.docedu.web.admin.vo.TransVO;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.WordcollectionVO;

@Repository
public class BoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<GrammarVO> showgrammar_page(Criteria cr) {
		return sqlSessionTemplate.selectList("grammar.grammarList", cr);
	}
	
	public List<Object> grammarread(String grammar_title) {
		return sqlSessionTemplate.selectList("grammar.grammarselect", grammar_title);
	}
	public List<TransVO> showtrans_page(Criteria cr) {
		return sqlSessionTemplate.selectList("trans.transList", cr);
	}
	public List<WordcollectionVO> wordcollection(Criteria cr) {
		return sqlSessionTemplate.selectList("wordcollection.wordgrammar", cr);
	}
	
	public List<Object> transread(String trans_title) {
		return sqlSessionTemplate.selectList("trans.transselect", trans_title);
	}
}
