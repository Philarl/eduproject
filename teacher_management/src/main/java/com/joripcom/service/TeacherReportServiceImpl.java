package com.joripcom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.joripcom.domain.TeacherReportVO;
import com.joripcom.mapper.TeacherReportMapper;

import lombok.Setter;

@Service
public class TeacherReportServiceImpl implements TeacherReportService {
	
	@Setter(onMethod_ = {@Autowired})
	private TeacherReportMapper teacherReportMapper;
	
	@Override
	public void saveReport(TeacherReportVO vo) {
		teacherReportMapper.saveReport(vo);
	}

	@Override
	public TeacherReportVO getReport(String teacher, String c_name) {
		
		return teacherReportMapper.getReport(teacher, c_name);
	}

	@Override
	public List<TeacherReportVO> teacher_list() {
		
		return teacherReportMapper.teacher_list();
	}

	@Override
	public List<TeacherReportVO> class_list(String teacher) {
		
		return teacherReportMapper.class_list(teacher);
	}

}
