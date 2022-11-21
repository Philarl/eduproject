package com.docedu.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.TendencyVO;

@Repository
public class TendencyDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void tendencyinsert(TendencyVO tendencyVO) {
		sqlSessionTemplate.insert("tendencyinfor.tendencyinsert",tendencyVO);
	}
	public List<TendencyVO> tendencylist(Criteria cr) {
		return sqlSessionTemplate.selectList("tendencyinfor.tendencyList", cr);
	}
	public TendencyVO tendencyresult(int tendency_seq) {
		return sqlSessionTemplate.selectOne("tendencyinfor.tendencyresult", tendency_seq);
	}
}
