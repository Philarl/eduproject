package com.docedu.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.user.dao.ArrangementDAO;
import com.docedu.web.user.vo.ArrangementVO;
import com.docedu.web.user.vo.Criteria;
@Service
public class ArrangementServiceImpl implements ArrangementService {
	
	@Autowired
	private ArrangementDAO arrangementDAO;
	
	@Override
	public List<ArrangementVO> arrangementlist_page(Criteria cr) {
		return arrangementDAO.arrangementlist_page(cr);
	}
	
	@Override
	public List<Object> arrangementread(String arrangement_name) {
		return arrangementDAO.arrangementread(arrangement_name);
	}
}
