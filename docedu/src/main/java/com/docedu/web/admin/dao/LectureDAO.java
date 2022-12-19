package com.docedu.web.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.admin.vo.LectureVO;

@Repository
public class LectureDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void lectureinsert(LectureVO lectureVO) {
		sqlSessionTemplate.insert("lecture.lectureinsert",lectureVO);
	}
}
