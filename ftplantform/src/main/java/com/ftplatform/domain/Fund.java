package com.ftplatform.domain;

import java.util.Date;

/**
 * Fund entity. @author MyEclipse Persistence Tools
 */
public class Fund extends AbstractFund implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Fund() {
	}

	/** minimal constructor */
	public Fund(Integer fundNo, String fundName, Double price, String status,
			Date createdDate) {
		super(fundNo, fundName, price, status, createdDate);
	}

	/** full constructor */
	public Fund(Integer fundNo, String fundName, Double price,
			String description, String status, Date createdDate) {
		super(fundNo, fundName, price, description, status, createdDate);
	}

}
