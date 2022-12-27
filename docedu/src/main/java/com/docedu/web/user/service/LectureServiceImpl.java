package com.docedu.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.admin.vo.LectureVO;
import com.docedu.web.user.dao.LectureDAO;
import com.docedu.web.user.vo.Criteria;

@Service
public class LectureServiceImpl implements LectureService {

	@Autowired
	private LectureDAO lectureDAO;
	
	@Override
	public List<LectureVO> lecturelist(Criteria cr) {
		return lectureDAO.lecturelist(cr);
	}

	@Override
	public LectureVO lectureread(int lecture_seq) {
		return lectureDAO.lectureread(lecture_seq);
	}

}
