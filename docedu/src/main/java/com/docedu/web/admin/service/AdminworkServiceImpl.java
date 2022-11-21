package com.docedu.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.admin.dao.AdminworkDAO;
import com.docedu.web.admin.vo.AdminworkVO;

@Service
public class AdminworkServiceImpl implements AdminworkService {
	
	@Autowired
	private AdminworkDAO adminworkDAO;
	
	@Override
	public List<AdminworkVO> adminworkfixview(AdminworkVO adminworkVO){
		return adminworkDAO.selectfix(adminworkVO);
	}
	@Override
	public List<AdminworkVO> adminworkexceptedview(AdminworkVO adminworkVO){
		return adminworkDAO.selectexpected(adminworkVO);
	}
	@Override
	public List<AdminworkVO> adminworkdayview(AdminworkVO adminworkVO){
		return adminworkDAO.selectday(adminworkVO);
	}
	@Override
	public List<AdminworkVO> adminworkmonthlyview(AdminworkVO adminworkVO){
		return adminworkDAO.selectmonthly(adminworkVO);
	}
}
