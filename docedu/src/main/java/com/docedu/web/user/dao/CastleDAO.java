package com.docedu.web.user.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.user.vo.CastleDetailVO;
import com.docedu.web.user.vo.GrammarCastleDetailVO;
import com.docedu.web.user.vo.ReadingCastleVO;

import lombok.extern.java.Log;

@Repository
@Log
public class CastleDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<GrammarCastleDetailVO> grammarCastleDetail(Map map) {
		return sqlSessionTemplate.selectList("castle.grammarcastledetail", map);
	}
	
	public List<ReadingCastleVO> readingCastle(String address) {
		log.info("DAO");
		return sqlSessionTemplate.selectList("readingcastle.readingcastle", address);
	}
	
	public List<CastleDetailVO> readingCastleDetail(Map map) {
		return sqlSessionTemplate.selectList("castle.readingcastledetail", map);
	}

	public void readingCastleInsert(Map map) {
		sqlSessionTemplate.insert("castle.readingcastleinsert", map);
	}

}
