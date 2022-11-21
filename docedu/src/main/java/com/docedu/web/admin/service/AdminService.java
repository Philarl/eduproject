package com.docedu.web.admin.service;

import javax.servlet.http.HttpSession;

import com.docedu.web.admin.vo.AdminVO;

public interface AdminService {
	public AdminVO getAdmin(AdminVO adminVO);
	public boolean adminloginCheck(AdminVO vo, HttpSession session);
	void adminregister(AdminVO adminVO);
	public void logout(HttpSession session);
}