package com.docedu.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.admin.vo.CarrotVO;
import com.docedu.web.user.dao.CarrotDAO;
import com.docedu.web.user.vo.Criteria;
@Service
public class CarrotServiceImpl implements CarrotService {
	@Autowired
	private CarrotDAO carrotDAO;
	
	@Override
	public List<CarrotVO> carrotlist(Criteria cr) {
		return carrotDAO.carrotlist(cr);
	}

	@Override
	public CarrotVO carrotread(int carrot_seq) {
		return carrotDAO.carrotread(carrot_seq);
	}

}
