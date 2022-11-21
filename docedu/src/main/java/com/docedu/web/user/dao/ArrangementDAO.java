package com.docedu.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.user.vo.ArrangementVO;
import com.docedu.web.user.vo.Criteria;

@Repository
public class ArrangementDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	public List<ArrangementVO> arrangementlist_page(Criteria cr) {
		return sqlSessionTemplate.selectList("arrangement.arrangementList", cr);
	}
	
	public List<Object> arrangementread(String arrangement_name) {
		return sqlSessionTemplate.selectList("arrangement.arrangementselect", arrangement_name);
	}
}
