package com.docedu.web.admin.service;

import java.util.List;

import com.docedu.web.admin.vo.MaterialVO;
import com.docedu.web.user.vo.Criteria;

public interface MaterialService {
	public List<MaterialVO> materiallist(Criteria cr);
	void materialInsert(MaterialVO materialVO);
	MaterialVO materialread(int material_seq);
}
