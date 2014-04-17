package com.ftplatform.domain;

import java.sql.Timestamp;

/**
 * AbstractFinancialAccount entity provides the base persistence definition of
 * the FinancialAccount entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractFinancialAccount implements java.io.Serializable {

	// Fields

	private Integer accNo;
	private String accPwd;
	private Double accAmount;
	private String accStatus;
	private String idcardNo;
	private Timestamp createDate;

	// Constructors

	/** default constructor */
	public AbstractFinancialAccount() {
	}

	/** full constructor */
	public AbstractFinancialAccount(String accPwd, Double accAmount,
			String accStatus, String idcardNo, Timestamp createDate) {
		this.accPwd = accPwd;
		this.accAmount = accAmount;
		this.accStatus = accStatus;
		this.idcardNo = idcardNo;
		this.createDate = createDate;
	}

	// Property accessors

	public Integer getAccNo() {
		return this.accNo;
	}

	public void setAccNo(Integer accNo) {
		this.accNo = accNo;
	}

	public String getAccPwd() {
		return this.accPwd;
	}

	public void setAccPwd(String accPwd) {
		this.accPwd = accPwd;
	}

	public Double getAccAmount() {
		return this.accAmount;
	}

	public void setAccAmount(Double accAmount) {
		this.accAmount = accAmount;
	}

	public String getAccStatus() {
		return this.accStatus;
	}

	public void setAccStatus(String accStatus) {
		this.accStatus = accStatus;
	}

	public String getIdcardNo() {
		return this.idcardNo;
	}

	public void setIdcardNo(String idcardNo) {
		this.idcardNo = idcardNo;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

}