package com.docedu.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.SchoolmatchVO;

@Repository
public class SchoolmatchDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void schoolmatchinsert(SchoolmatchVO schoolmatchVO) {
		sqlSessionTemplate.insert("schoolmatchinfor.schoolmatchinsert",schoolmatchVO);
	}
	public List<SchoolmatchVO> schoolmatchlist(Criteria cr) {
		return sqlSessionTemplate.selectList("schoolmatchinfor.schoolmatchList", cr);
	}
	public SchoolmatchVO schoolmatchresult(int schoolmatch_seq) {
		return sqlSessionTemplate.selectOne("schoolmatchinfor.schoolmatchresult", schoolmatch_seq);
	}
}
