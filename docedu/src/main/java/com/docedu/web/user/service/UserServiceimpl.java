package com.docedu.web.user.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.user.dao.UserDAO;
import com.docedu.web.user.vo.UserVO;

@Service
public class UserServiceimpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Override
	public UserVO getUser(UserVO userVO) {
		return userDAO.getUser(userVO);
	}
	
	@Override
	public boolean loginCheck(UserVO userVO, HttpSession session) {
		boolean result = userDAO.loginCheck(userVO);
		if (result) {
			UserVO vo2 = getUser(userVO);
			session.setAttribute("user_id", vo2.getUser_id());
			session.setAttribute("user_password", vo2.getUser_password());
		}
		return result;
	}
	@Override
	public void userregister(UserVO userVO) {
		userDAO.userregister(userVO);
	}
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
}
