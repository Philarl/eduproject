package com.docedu.web.user.service;

import java.util.List;

import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.TendencyVO;

public interface TendencyService {
	void tendencyInsert(TendencyVO tendencyVO);
	public List<TendencyVO> tendencylist(Criteria cr);
	TendencyVO tendencyresult(int tendency_seq);
}
