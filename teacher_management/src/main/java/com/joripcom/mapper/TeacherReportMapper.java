package com.joripcom.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.joripcom.domain.TeacherReportVO;

public interface TeacherReportMapper {
	
	void saveReport(TeacherReportVO vo);
	TeacherReportVO getReport(@Param("teacher") String teacher, @Param("c_name") String c_name);
	List<TeacherReportVO> teacher_list();
	List<TeacherReportVO> class_list(String teacher);

}
