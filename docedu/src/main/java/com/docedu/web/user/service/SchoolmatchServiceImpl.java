package com.docedu.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.user.dao.SchoolmatchDAO;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.SchoolmatchVO;

@Service
public class SchoolmatchServiceImpl implements SchoolmatchService {
	@Autowired
	private SchoolmatchDAO schoolmatchDAO;
	@Override
	public void schoolmatchInsert(SchoolmatchVO schoolmatchVO) {
		schoolmatchDAO.schoolmatchinsert(schoolmatchVO);
	}
	@Override
	public List<SchoolmatchVO> schoolmatchlist(Criteria cr) {
		return schoolmatchDAO.schoolmatchlist(cr);
	}
	@Override
	public SchoolmatchVO schoolmatchresult(int schoolmatch_seq) {
		return schoolmatchDAO.schoolmatchresult(schoolmatch_seq);
	}
}
