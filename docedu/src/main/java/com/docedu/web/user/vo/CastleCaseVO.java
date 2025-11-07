package com.docedu.web.user.vo;

import java.util.Date;

import lombok.Data;

@Data
public class CastleCaseVO {
	/*
    CNO        INT AUTO_INCREMENT PRIMARY KEY,
    NAME      VARCHAR(20) NOT NULL,
    SCHOOL    VARCHAR(20) NOT NULL,
    GRADE     INT NOT NULL,
    BIRTHDATE	INT NOT NULL,
    TESTDATE    DATETIME    DEFAULT current_timestamp
    */
	private int cno;
	private String name;
	private String school;
	private int grade;
	private Date birthdate;
	private Date testdate;

}
