package com.ftplatform.domain;

import java.sql.Timestamp;

/**
 * FinancialAccountTransinfo entity. @author MyEclipse Persistence Tools
 */
public class FinancialAccountTransinfo extends
		AbstractFinancialAccountTransinfo implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public FinancialAccountTransinfo() {
	}

	/** full constructor */
	public FinancialAccountTransinfo(String transType, Integer transAmount,
			Integer accNo, Timestamp createDate) {
		super(transType, transAmount, accNo, createDate);
	}

}
