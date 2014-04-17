package com.ftplatform.domain;

import java.sql.Timestamp;

/**
 * FinancialAccount entity. @author MyEclipse Persistence Tools
 */
public class FinancialAccount extends AbstractFinancialAccount implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public FinancialAccount() {
	}

	/** full constructor */
	public FinancialAccount(String accPwd, Double accAmount, String accStatus,
			String idcardNo, Timestamp createDate) {
		super(accPwd, accAmount, accStatus, idcardNo, createDate);
	}

}
