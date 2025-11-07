package com.docedu.web.user.vo;

import java.util.Date;

import lombok.Data;

@Data
public class CastleDetailVO {
	/*
    CNO        INT,
    NAME      VARCHAR(20) NOT NULL,
    SCHOOL    VARCHAR(20) NOT NULL,
    GRADE     INT NOT NULL,
    BIRTHDATE	INT NOT NULL,
    TESTDATE    DATETIME NOT NULL,
    CATEGORY	VARCHAR(10),
    Q_NO        INT,
    CORRECT      VARCHAR(10) DEFAULT 'X' NOT NULL,
    */
	private int cno;
	private String name;
	private String school;
	private int grade;
	private Date birthdate;
	private Date testdate;
	private String category;
	private int q_no;
	private String correct;

}