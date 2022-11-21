package com.docedu.web.user.service;

import java.util.List;

import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.PrintimsiVO;

public interface BoardService {
	public List<PrintimsiVO> printboard_page(Criteria cr);
	void printInsert(PrintimsiVO printimsiVO);
	PrintimsiVO piread(int pi_seq);
}