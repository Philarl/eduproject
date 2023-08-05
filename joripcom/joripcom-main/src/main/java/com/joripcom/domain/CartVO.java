package com.joripcom.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartVO {
	/*
	CREATE TABLE CART_TBL(
	    CART_NO         NUMBER          CONSTRAINT PK_CART_NO PRIMARY KEY,
	    P_NO            NUMBER,
	    U_ID            VARCHAR2(20),
	    CART_AMT   NUMBER          NOT NULL,
	    FOREIGN KEY (P_NO) REFERENCES P_TBL (P_NO),
	    FOREIGN KEY (U_ID) REFERENCES U_TBL (U_ID)
	);
	*/
	
	private Integer cart_no;
	private Integer p_no;
	private String u_id;
	private Integer cart_amt;

}
