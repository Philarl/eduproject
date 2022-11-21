package com.docedu.web.user.service;

import java.util.List;

import com.docedu.web.user.vo.ArrangementVO;
import com.docedu.web.user.vo.Criteria;

public interface ArrangementService {
	public List<ArrangementVO> arrangementlist_page(Criteria cr);
	public List<Object> arrangementread(String arrangement_name);
}
