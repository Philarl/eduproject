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
	
	public boolean adminloginCheck(AdminVO adminVO) {
		String name = sqlSessionTemplate.selectOne("admin.loginCheck", adminVO);
		return (name == null) ? false : true;
	}
	public void adminregister(AdminVO adminVO) {
		sqlSessionTemplate.insert("admin.admin_register",adminVO);
	}
	public void logout(HttpSession session) {
	}
}
