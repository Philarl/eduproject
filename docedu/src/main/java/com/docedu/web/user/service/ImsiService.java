package com.docedu.web.user.service;

import java.util.List;

import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.ImsiVO;

public interface ImsiService {
	public List<ImsiVO> imsilist(Criteria cr);
	ImsiVO imsiread(int imsi_seq);
}
