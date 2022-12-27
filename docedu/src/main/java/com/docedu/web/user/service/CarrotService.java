package com.docedu.web.user.service;

import java.util.List;

import com.docedu.web.admin.vo.CarrotVO;
import com.docedu.web.user.vo.Criteria;

public interface CarrotService {
	public List<CarrotVO> carrotlist(Criteria cr);
	CarrotVO carrotread(int carrot_seq);
}
