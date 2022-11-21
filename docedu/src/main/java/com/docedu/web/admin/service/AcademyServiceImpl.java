package com.docedu.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.admin.dao.AcademyDAO;
import com.docedu.web.admin.vo.AcademyVO;
import com.docedu.web.user.vo.Criteria;

@Service
public class AcademyServiceImpl implements AcademyService {
	@Autowired
	private AcademyDAO academyDAO;
	
	@Override
	public List<AcademyVO> academylist(Criteria cr) {
		return academyDAO.academylist(cr);
	}
	@Override
	public AcademyVO academyread(int academy_seq) {
		return academyDAO.academyread(academy_seq);
	}
	@Override
	public void academyInsert(AcademyVO academyVO) {
		// TODO Auto-generated method stub
		academyDAO.academyinsert(academyVO);
	}
}
