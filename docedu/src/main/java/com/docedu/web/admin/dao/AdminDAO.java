package com.docedu.web.admin.dao;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.admin.vo.AdminVO;

@Repository
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public AdminVO getAdmin(AdminVO adminVO) {
		return sqlSessionTemplate.selectOne("admin.getAdmin", adminVO);
	}
	
	//로그인 
	public AdminVO adminloginCheck(String adminid) {
		return sqlSessionTemplate.selectOne("admin.adminloginCheck",adminid);
	}
	public int adminregister(AdminVO adminVO) {
		return sqlSessionTemplate.insert("admin.admin_register",adminVO);
	}
	public void logout(HttpSession session) {
	}
}
