package com.ftplatform.domain;

import java.sql.Timestamp;

/**
 * AbstractFinancialAccountTransinfo entity provides the base persistence
 * definition of the FinancialAccountTransinfo entity. @author MyEclipse
 * Persistence Tools
 */

public abstract class AbstractFinancialAccountTransinfo implements
		java.io.Serializable {

	// Fields

	private Integer transId;
	private String transType;
	private Integer transAmount;
	private Integer accNo;
	private Timestamp createDate;

	// Constructors

	/** default constructor */
	public AbstractFinancialAccountTransinfo() {
	}

	/** full constructor */
	public AbstractFinancialAccountTransinfo(String transType,
			Integer transAmount, Integer accNo, Timestamp createDate) {
		this.transType = transType;
		this.transAmount = transAmount;
		this.accNo = accNo;
		this.createDate = createDate;
	}

	// Property accessors

	public Integer getTransId() {
		return this.transId;
	}

	public void setTransId(Integer transId) {
		this.transId = transId;
	}

	public String getTransType() {
		return this.transType;
	}

	public void setTransType(String transType) {
		this.transType = transType;
	}

	public Integer getTransAmount() {
		return this.transAmount;
	}

	public void setTransAmount(Integer transAmount) {
		this.transAmount = transAmount;
	}

	public Integer getAccNo() {
		return this.accNo;
	}

	public void setAccNo(Integer accNo) {
		this.accNo = accNo;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

}