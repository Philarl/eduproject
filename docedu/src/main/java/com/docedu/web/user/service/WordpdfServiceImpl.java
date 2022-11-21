package com.docedu.web.user.service;

import java.util.List;

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
}
