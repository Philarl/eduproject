package com.docedu.web.user.dao;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.user.vo.UserVO;

@Repository
public class UserDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public UserVO getUser(UserVO userVO) {
		return sqlSessionTemplate.selectOne("user.getUser", userVO);
	}
	
	public boolean loginCheck(UserVO userVO) {
		String name = sqlSessionTemplate.selectOne("user.loginCheck", userVO);
		return (name == null) ? false : true;
	}
	public void userregister(UserVO userVO) {
		sqlSessionTemplate.insert("user.user_register",userVO);
	}
	public void logout(HttpSession session) {
	}
}
