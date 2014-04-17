package com.ftplatform.domain;

/**
 * AbstractFundHolding entity provides the base persistence definition of the
 * FundHolding entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractFundHolding implements java.io.Serializable {

	// Fields

	private Integer hid;
	private Integer accNo;
	private Integer fundNo;
	private Integer amount;

	// Constructors

	/** default constructor */
	public AbstractFundHolding() {
	}

	/** full constructor */
	public AbstractFundHolding(Integer accNo, Integer fundNo, Integer amount) {
		this.accNo = accNo;
		this.fundNo = fundNo;
		this.amount = amount;
	}

	// Property accessors

	public Integer getHid() {
		return this.hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public Integer getAccNo() {
		return this.accNo;
	}

	public void setAccNo(Integer accNo) {
		this.accNo = accNo;
	}

	public Integer getFundNo() {
		return this.fundNo;
	}

	public void setFundNo(Integer fundNo) {
		this.fundNo = fundNo;
	}

	public Integer getAmount() {
		return this.amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

}