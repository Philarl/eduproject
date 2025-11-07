package com.docedu.web.user.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.user.dao.WordpdfDAO;
import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.WordpdfVO;

@Service
public class WordpdfServiceImpl implements WordpdfService{
	@Autowired
	private WordpdfDAO wordpdfDAO;
	
	@Override
	public List<WordpdfVO> wordpdflist_page(Criteria cr) {
		return wordpdfDAO.wordpdflist_page(cr);
	}

	@Override
	public List<Object> wordpdfread(String wpdf_header) {
		return wordpdfDAO.wordpdfread(wpdf_header);
	}

	@Override
	public int wordpdfdelete(String wpdf_header) {
		
		return wordpdfDAO.wordpdfdelete(wpdf_header);
	}

	@Override
	public List<WordpdfVO> wordpdfrandomize(Map map) {
		List<WordpdfVO> list = new ArrayList();
		map.put("wpdf_header", (String) map.get("wpdf_header"));
		int total = wordpdfDAO.wordpdfread((String) map.get("wpdf_header")).size();
		int size = 30;
		// System.out.println("total: " + total);
		
		List<WordpdfVO> list2 = new ArrayList();
		Map map2 = new HashMap();
		for(int i = 0; i <= total/size; i++) {
			map.put("start", size*i + 1);
			map.put("end", size*(i + 1));
			System.out.println(i*size);
			for(int j = 0; j < size; j++) {
				if(i*size + j < total) {
					WordpdfVO vo = wordpdfDAO.wordpdfrandomize(map).get(j);
					// System.out.println(vo);
					map2.put("wpdf_header", vo.getWpdf_header());
					map2.put("wpdf_name", vo.getWpdf_name());
					map2.put("wpdf_trans", vo.getWpdf_trans());
					map2.put("wpdf_class", vo.getWpdf_class());
					// System.out.println(map2);
					wordpdfDAO.insertRandom(map2);
				}else {
					
				}
			}
			
		}
		return list;
	}
}
