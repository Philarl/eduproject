package com.docedu.web.user.service;

import javax.servlet.http.HttpSession;

import com.docedu.web.user.vo.UserVO;

public interface UserService {
	public UserVO getUser(UserVO userVO);
	public boolean loginCheck(UserVO vo, HttpSession session);
	void userregister(UserVO userVO);
	public void logout(HttpSession session);
}
