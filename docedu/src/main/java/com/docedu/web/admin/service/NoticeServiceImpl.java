package com.docedu.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.admin.dao.NoticeDAO;
import com.docedu.web.admin.vo.NoticeVO;
import com.docedu.web.user.vo.Criteria;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public List<NoticeVO> noticelist(Criteria cr) {
		return noticeDAO.noticelist(cr);
	}
	@Override
	public NoticeVO noticeread(int notice_seq) {
		return noticeDAO.noticeread(notice_seq);
	}
	@Override
	public void noticeInsert(NoticeVO noticeVO) {
		// TODO Auto-generated method stub
		noticeDAO.noticeinsert(noticeVO);
	}

}
