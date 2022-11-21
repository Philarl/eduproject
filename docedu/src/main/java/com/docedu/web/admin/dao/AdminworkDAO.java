package com.docedu.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.admin.vo.AdminworkVO;

@Repository
public class AdminworkDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<AdminworkVO> selectfix(AdminworkVO adminworkVO){
		return sqlSessionTemplate.selectList("adminwork.adminworkselectbyfix",adminworkVO);
	}
	public List<AdminworkVO> selectexpected(AdminworkVO adminworkVO){
		return sqlSessionTemplate.selectList("adminwork.adminworkselectbyexpected",adminworkVO);
	}
	public List<AdminworkVO> selectday(AdminworkVO adminworkVO){
		return sqlSessionTemplate.selectList("adminwork.adminworkselectbyday",adminworkVO);
	}
	public List<AdminworkVO> selectmonthly(AdminworkVO adminworkVO){
		return sqlSessionTemplate.selectList("adminwork.adminworkselectbymonthly",adminworkVO);
	}
}
