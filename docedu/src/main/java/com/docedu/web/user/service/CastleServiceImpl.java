package com.docedu.web.user.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.user.dao.CastleDAO;
import com.docedu.web.user.vo.CastleDetailVO;
import com.docedu.web.user.vo.GrammarCastleDetailVO;
import com.docedu.web.user.vo.ReadingCastleVO;

import lombok.extern.java.Log;

@Service
@Log
public class CastleServiceImpl implements CastleService{
	@Autowired
	private CastleDAO castleDAO;

	@Override
	public List<GrammarCastleDetailVO> grammarCastleDetail(Map map) {
		return castleDAO.grammarCastleDetail(map);
	}

	@Override
	public List<ReadingCastleVO> readingCastle(String address) {
		log.info("service");
		return castleDAO.readingCastle(address);
	}

	@Override
	public List<CastleDetailVO> readingCastleDetail(Map map) {
		return castleDAO.readingCastleDetail(map);
	}

	@Override
	public void readingCastleInsert(Map hashmap) {
		Map map = new HashMap<String, Object>();
		map.put("name", hashmap.get("name"));
		hashmap.remove("name");
		map.put("birthdate", hashmap.get("birthdate"));
		hashmap.remove("birthdate");
		map.put("school_name", hashmap.get("school_name"));
		hashmap.remove("school_name");
		map.put("school_type", hashmap.get("school_type"));
		hashmap.remove("school_type");
		map.put("school", hashmap.get("school"));
		hashmap.remove("school");
		map.put("grade", hashmap.get("grade"));
		hashmap.remove("grade");
		Iterator<String> keys = hashmap.keySet().iterator();
		while( keys.hasNext() ){
			String strKey = keys.next();
			Object strValue = map.get(strKey);
			if(map.containsKey("q_no")) {
				map.replace("q_no", strKey);
				map.replace("correct", strValue);
			}else {
				map.put("q_no", strKey);
				map.put("correct", strValue);
			}
			castleDAO.readingCastleInsert(map);
		}
		
	}
	

}
