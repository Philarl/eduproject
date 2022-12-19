package com.docedu.web.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.admin.dao.LectureDAO;
import com.docedu.web.admin.vo.LectureVO;

@Service
public class LectureServiceImpl implements LectureService {
	@Autowired
	private LectureDAO lectureDAO;
	
	@Override
	public void lectureInsert(LectureVO lectureVO) {
		// TODO Auto-generated method stub
		lectureDAO.lectureinsert(lectureVO);
	}

}
