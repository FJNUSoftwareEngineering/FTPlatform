package com.ftplatform.domain;

import java.util.Date;

/**
 * AbstractFund entity provides the base persistence definition of the Fund
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractFund implements java.io.Serializable {

	// Fields

	private Integer fundNo;
	private String fundName;
	private Double price;
	private String description;
	private String status;
	private Date createdDate;

	// Constructors

	/** default constructor */
	public AbstractFund() {
	}

	/** minimal constructor */
	public AbstractFund(Integer fundNo, String fundName, Double price,
			String status, Date createdDate) {
		this.fundNo = fundNo;
		this.fundName = fundName;
		this.price = price;
		this.status = status;
		this.createdDate = createdDate;
	}

	/** full constructor */
	public AbstractFund(Integer fundNo, String fundName, Double price,
			String description, String status, Date createdDate) {
		this.fundNo = fundNo;
		this.fundName = fundName;
		this.price = price;
		this.description = description;
		this.status = status;
		this.createdDate = createdDate;
	}

	// Property accessors

	public Integer getFundNo() {
		return this.fundNo;
	}

	public void setFundNo(Integer fundNo) {
		this.fundNo = fundNo;
	}

	public String getFundName() {
		return this.fundName;
	}

	public void setFundName(String fundName) {
		this.fundName = fundName;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

}