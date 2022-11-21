package com.docedu.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.admin.vo.NoticeVO;
import com.docedu.web.user.vo.Criteria;

@Repository
public class NoticeDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<NoticeVO> noticelist(Criteria cr) {
		return sqlSessionTemplate.selectList("notice.noticelist", cr);
	}
	public NoticeVO noticeread(int notice_seq) {
		return sqlSessionTemplate.selectOne("notice.noticeview", notice_seq);
	}
	public void noticeinsert(NoticeVO noticeVO) {
		sqlSessionTemplate.insert("notice.noticeinsert",noticeVO);
	}
}
