package com.docedu.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.docedu.web.admin.vo.MaterialVO;
import com.docedu.web.user.vo.Criteria;

@Repository
public class MaterialDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<MaterialVO> materiallist(Criteria cr) {
		return sqlSessionTemplate.selectList("material.materiallist", cr);
	}
	public MaterialVO materialread(int material_seq) {
		return sqlSessionTemplate.selectOne("material.materialview", material_seq);
	}
	public void materialinsert(MaterialVO materialVO) {
		sqlSessionTemplate.insert("material.materialinsert",materialVO);
	}
}
