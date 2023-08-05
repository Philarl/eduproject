package com.joripcom.service;

import java.util.List;

import com.joripcom.domain.TeacherReportVO;

public interface TeacherReportService {
	void saveReport(TeacherReportVO vo);
	TeacherReportVO getReport(String teacher, String c_name);
	List<TeacherReportVO> teacher_list();
	List<TeacherReportVO> class_list(String teacher);
}
