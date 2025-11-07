package com.docedu.web.user.service;

import java.util.List;
import java.util.Map;

import com.docedu.web.user.vo.CastleDetailVO;
import com.docedu.web.user.vo.GrammarCastleDetailVO;
import com.docedu.web.user.vo.ReadingCastleVO;

public interface CastleService {
	
	public List<GrammarCastleDetailVO> grammarCastleDetail(Map map);
	public List<ReadingCastleVO> readingCastle(String address);
	public List<CastleDetailVO> readingCastleDetail(Map map);
	public void readingCastleInsert(Map map);

}
