package com.docedu.web.user.service;

import java.util.List;
import java.util.Map;

import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.TendencyVO;

public interface TendencyService {
	void tendencyInsert(TendencyVO tendencyVO);
	public List<TendencyVO> tendencylist(Criteria cr);
	TendencyVO tendencyresult(int tendency_seq);
	void tendencyGetNext(Map map);
	void tendencydelete(int tendency_seq);
}
