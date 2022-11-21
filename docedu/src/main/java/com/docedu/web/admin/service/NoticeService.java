package com.docedu.web.admin.service;

import java.util.List;

import com.docedu.web.admin.vo.NoticeVO;
import com.docedu.web.user.vo.Criteria;

public interface NoticeService {
	public List<NoticeVO> noticelist(Criteria cr);
	void noticeInsert(NoticeVO noticeVO);
	NoticeVO noticeread(int notice_seq);
}
