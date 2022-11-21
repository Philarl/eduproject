package com.docedu.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docedu.web.admin.dao.MaterialDAO;
import com.docedu.web.admin.vo.MaterialVO;
import com.docedu.web.user.vo.Criteria;

@Service
public class MaterialServiceImpl implements MaterialService {
	@Autowired
	private MaterialDAO materialDAO;
	
	@Override
	public List<MaterialVO> materiallist(Criteria cr) {
		return materialDAO.materiallist(cr);
	}
	@Override
	public MaterialVO materialread(int material_seq) {
		return materialDAO.materialread(material_seq);
	}
	@Override
	public void materialInsert(MaterialVO materialVO) {
		// TODO Auto-generated method stub
		materialDAO.materialinsert(materialVO);
	}

}
