package com.docedu.web.admin.service;

import java.util.List;

import com.docedu.web.admin.vo.AdminworkVO;

public interface AdminworkService {
	public List<AdminworkVO> adminworkfixview(AdminworkVO adminworkVO);
	public List<AdminworkVO> adminworkexceptedview(AdminworkVO adminworkVO);
	public List<AdminworkVO> adminworkdayview(AdminworkVO adminworkVO);
	public List<AdminworkVO> adminworkmonthlyview(AdminworkVO adminworkVO);
}
