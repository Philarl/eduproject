package com.docedu.web.admin.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class AcademyVO {
	private int academy_seq;
	private String academy_name;
	private String academy_phone1;
	private String academy_phone2;
	private String academy_phone3;
	private String academy_address;
	private Timestamp academy_date;
}
