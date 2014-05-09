package com.ftplatform.domain;

/**
 * Account entity. @author MyEclipse Persistence Tools
 */
public class Account extends AbstractAccount implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Account() {
	}

	/** minimal constructor */
	public Account(Integer accountId) {
		super(accountId);
	}

	/** full constructor */
	public Account(Integer accountId, String accountPwd) {
		super(accountId, accountPwd);
	}

}
