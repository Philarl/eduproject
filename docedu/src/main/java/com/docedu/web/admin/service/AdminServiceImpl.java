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
	
	@Override
	public AdminVO getAdmin(AdminVO adminVO) {
		return adminDAO.getAdmin(adminVO);
	}
	
	@Override
	public boolean adminloginCheck(AdminVO adminVO, HttpSession session) {
		boolean result = adminDAO.adminloginCheck(adminVO);
		if (result) {
			AdminVO vo2 = getAdmin(adminVO);
			session.setAttribute("admin_id", vo2.getAdmin_id());
			session.setAttribute("admin_password", vo2.getAdmin_password());
		}
		return result;
	}
	@Override
	public void adminregister(AdminVO adminVO) {
		adminDAO.adminregister(adminVO);
	}
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

}
