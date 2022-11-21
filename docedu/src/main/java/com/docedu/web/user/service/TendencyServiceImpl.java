package com.docedu.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.user.dao.TendencyDAO;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.TendencyVO;

@Service
public class TendencyServiceImpl implements TendencyService {
	@Autowired
	private TendencyDAO tendencyDAO;
	@Override
	public void tendencyInsert(TendencyVO tendencyVO) {
		tendencyDAO.tendencyinsert(tendencyVO);
	}
	@Override
	public List<TendencyVO> tendencylist(Criteria cr) {
		return tendencyDAO.tendencylist(cr);
	}
	@Override
	public TendencyVO tendencyresult(int tendency_seq) {
		return tendencyDAO.tendencyresult(tendency_seq);
	}
}
