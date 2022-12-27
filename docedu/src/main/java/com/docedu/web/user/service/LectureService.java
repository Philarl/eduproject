package com.docedu.web.user.service;

import java.util.List;

import com.docedu.web.admin.vo.LectureVO;
import com.docedu.web.user.vo.Criteria;

public interface LectureService {
	public List<LectureVO> lecturelist(Criteria cr);
	LectureVO lectureread(int lecture_seq);
}
