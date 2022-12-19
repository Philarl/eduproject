package com.docedu.web.admin.service;

import javax.servlet.http.HttpSession;

import com.docedu.web.admin.vo.AdminVO;

public interface AdminService {
	public AdminVO getAdmin(AdminVO adminVO);
	AdminVO adminloginCheck(String adminid);
	int adminregister(AdminVO adminVO);
	public void logout(HttpSession session);
}