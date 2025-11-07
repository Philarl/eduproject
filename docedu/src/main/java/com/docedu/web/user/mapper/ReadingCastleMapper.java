package com.docedu.web.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.docedu.web.user.vo.ReadingCastleVO;

public interface ReadingCastleMapper {
	
	List<ReadingCastleVO> rc_list(@Param("category") String category, @Param("key") String key, @Param("q_no") int q_no);

}
