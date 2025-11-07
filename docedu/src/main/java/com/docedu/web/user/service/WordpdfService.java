package com.docedu.web.user.service;

import java.util.List;
import java.util.Map;

import com.docedu.web.user.vo.Criteria;
import com.docedu.web.user.vo.WordpdfVO;

public interface WordpdfService {
	public List<WordpdfVO> wordpdflist_page(Criteria cr);
	public List<Object> wordpdfread(String wpdf_header);
	public int wordpdfdelete(String wpdf_header);
	public List<WordpdfVO> wordpdfrandomize(Map map);
}
