package com.docedu.web.user.vo;

import lombok.Data;

@Data
public class CastleInfoVO {
	/*
    CASTLE_IDX  INT AUTO_INCREMENT PRIMARY KEY,
    CATEGORY	VARCHAR(10) NOT NULL,
    Q_NO        INT NOT NULL,
    ANSWER      INT NOT NULL
    */
	private int castle_idx;
	private String category;
	private int q_no;
	private int answer;

}
