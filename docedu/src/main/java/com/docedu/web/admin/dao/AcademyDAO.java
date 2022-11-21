package com.docedu.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.admin.vo.AcademyVO;
import com.docedu.web.user.vo.Criteria;

@Repository
public class AcademyDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<AcademyVO> academylist(Criteria cr) {
		return sqlSessionTemplate.selectList("academy.academylist", cr);
	}
	public AcademyVO academyread(int academy_seq) {
		return sqlSessionTemplate.selectOne("academy.academyview", academy_seq);
	}
	public void academyinsert(AcademyVO academyVO) {
		sqlSessionTemplate.insert("academy.academyinsert",academyVO);
	}
}
