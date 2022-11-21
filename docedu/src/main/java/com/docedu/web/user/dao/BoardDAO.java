package com.docedu.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.PrintimsiVO;

@Repository
public class BoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<PrintimsiVO> printboard_page(Criteria cr) {
		return sqlSessionTemplate.selectList("printboard.getPi_boardList", cr);
	}
	
	public void printinsert(PrintimsiVO printimsiVO) {
		sqlSessionTemplate.insert("printboard.printinsert",printimsiVO);
	}
	public PrintimsiVO piread(int pi_seq) {
		return sqlSessionTemplate.selectOne("printboard.getPi_view", pi_seq);
	}
}
