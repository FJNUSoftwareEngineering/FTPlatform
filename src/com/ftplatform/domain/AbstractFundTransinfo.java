package com.ftplatform.domain;

import java.sql.Timestamp;

/**
 * AbstractFundTransinfo entity provides the base persistence definition of the
 * FundTransinfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractFundTransinfo implements java.io.Serializable {

	// Fields

	private Integer transId;
	private String transType;
	private Integer accNo;
	private Integer fundNo;
	private Integer amount;
	private Integer price;
	private Timestamp createDate;

	// Constructors

	/** default constructor */
	public AbstractFundTransinfo() {
	}

	/** full constructor */
	public AbstractFundTransinfo(Integer transId, String transType,
			Integer accNo, Integer fundNo, Integer amount, Integer price,
			Timestamp createDate) {
		this.transId = transId;
		this.transType = transType;
		this.accNo = accNo;
		this.fundNo = fundNo;
		this.amount = amount;
		this.price = price;
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

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

}