package com.docedu.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.admin.vo.CarrotVO;
import com.docedu.web.user.vo.Criteria;

@Repository
public class CarrotDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<CarrotVO> carrotlist(Criteria cr) {
		return sqlSessionTemplate.selectList("carrot.carrotlist", cr);
	}
	public CarrotVO carrotread(int carrot_seq) {
		return sqlSessionTemplate.selectOne("carrot.carrotview", carrot_seq);
	}
}
