package com.docedu.web.admin.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.admin.dao.AdminDAO;
import com.docedu.web.admin.vo.AdminVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	public AdminServiceImpl(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	
	@Override
	public AdminVO getAdmin(AdminVO adminVO) {
		return adminDAO.getAdmin(adminVO);
	}
	
	//로그인
	@Override
	public AdminVO adminloginCheck(String adminid) {
		return adminDAO.adminloginCheck(adminid);
	}
	@Override
	public int adminregister(AdminVO adminVO) {
		return adminDAO.adminregister(adminVO);
	}
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

}
