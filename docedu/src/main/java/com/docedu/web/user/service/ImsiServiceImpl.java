package com.docedu.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.user.dao.ImsiDAO;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.ImsiVO;

@Service
public class ImsiServiceImpl implements ImsiService {
	
	@Autowired
	private ImsiDAO imsiDAO;
	
	@Override
	public List<ImsiVO> imsilist(Criteria cr) {
		return imsiDAO.imsilist(cr);
	}

	@Override
	public ImsiVO imsiread(int imsi_seq) {
		return imsiDAO.imsiread(imsi_seq);
	}

}
