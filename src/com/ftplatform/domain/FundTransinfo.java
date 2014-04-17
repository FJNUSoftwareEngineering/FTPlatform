package com.ftplatform.domain;

import java.sql.Timestamp;

/**
 * FundTransinfo entity. @author MyEclipse Persistence Tools
 */
public class FundTransinfo extends AbstractFundTransinfo implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public FundTransinfo() {
	}

	/** full constructor */
	public FundTransinfo(Integer transId, String transType, Integer accNo,
			Integer fundNo, Integer amount, Integer price, Timestamp createDate) {
		super(transId, transType, accNo, fundNo, amount, price, createDate);
	}

}
