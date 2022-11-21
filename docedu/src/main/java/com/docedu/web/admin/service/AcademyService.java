package com.docedu.web.admin.service;

import java.util.List;

import com.docedu.web.admin.vo.AcademyVO;
import com.docedu.web.user.vo.Criteria;

public interface AcademyService {
	public List<AcademyVO> academylist(Criteria cr);
	void academyInsert(AcademyVO academyVO);
	AcademyVO academyread(int academy_seq);
}
