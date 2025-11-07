package com.docedu.web.user.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.WordpdfVO;

@Repository
public class WordpdfDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<WordpdfVO> wordpdflist_page(Criteria cr) {
		return sqlSessionTemplate.selectList("wordpdf.wordpdfviewList", cr);
	}
	
	public List<Object> wordpdfread(String wpdf_header) {
		return sqlSessionTemplate.selectList("wordpdf.wordpdfview", wpdf_header);
	}
	
	public int wordpdfdelete(String wpdf_header) {
		return sqlSessionTemplate.delete("wordpdf.wordpdfdelete", wpdf_header);
	}
	
	public List<WordpdfVO> wordpdfrandomize(Map map) {
		//System.out.println(map.get("wpdf_header"));
		//System.out.println(map.get("start"));
		//System.out.println(map.get("end"));
		return sqlSessionTemplate.selectList("wordpdf.wordpdfrandomize", map);
	}
	
	public void insertRandom(Map map) {
		sqlSessionTemplate.insert("wordpdf.insertRandom", map);
	}
}
