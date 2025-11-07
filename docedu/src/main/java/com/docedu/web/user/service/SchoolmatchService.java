package com.docedu.web.user.service;

import java.util.List;

import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.SchoolmatchVO;

public interface SchoolmatchService {
	void schoolmatchInsert(SchoolmatchVO schoolmatchVO);
	public List<SchoolmatchVO> schoolmatchlist(Criteria cr);
	SchoolmatchVO schoolmatchresult(int schoolmatch_seq);
	void schoolmatchdelete(int schoolmatch_seq);
	
	void schoolmatchInsertGD(SchoolmatchVO schoolmatchVO);
	public List<SchoolmatchVO> schoolmatchlistGD(Criteria cr);
	SchoolmatchVO schoolmatchresultGD(int schoolmatch_seq);
}
