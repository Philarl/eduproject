package com.docedu.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.user.dao.BoardDAO;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.PrintimsiVO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List<PrintimsiVO> printboard_page(Criteria cr) {
		return boardDAO.printboard_page(cr);
	}
	@Override
	public void printInsert(PrintimsiVO printimsiVO) {
		boardDAO.printinsert(printimsiVO);
	}
	@Override
	public PrintimsiVO piread(int pi_seq) {
		return boardDAO.piread(pi_seq);
	}
}
