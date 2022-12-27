package com.docedu.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.admin.vo.LectureVO;
import com.docedu.web.user.vo.Criteria;

@Repository
public class LectureDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<LectureVO> lecturelist(Criteria cr) {
		return sqlSessionTemplate.selectList("lecture.lecturelist", cr);
	}
	public LectureVO lectureread(int lecture_seq) {
		return sqlSessionTemplate.selectOne("lecture.lectureview", lecture_seq);
	}
}
