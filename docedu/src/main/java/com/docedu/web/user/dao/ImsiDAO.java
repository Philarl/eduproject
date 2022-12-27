package com.docedu.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.ImsiVO;

@Repository
public class ImsiDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<ImsiVO> imsilist(Criteria cr) {
		return sqlSessionTemplate.selectList("imsi.imsilist", cr);
	}
	public ImsiVO imsiread(int imsi_seq) {
		return sqlSessionTemplate.selectOne("imsi.imsiview", imsi_seq);
	}
}
