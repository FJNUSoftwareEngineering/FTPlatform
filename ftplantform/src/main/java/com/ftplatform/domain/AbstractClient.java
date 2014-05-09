package com.ftplatform.domain;

import java.sql.Timestamp;

/**
 * AbstractClient entity provides the base persistence definition of the Client
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractClient implements java.io.Serializable {

	// Fields

	private String idCardNo;
	private String clientName;
	private String sex;
	private String phone;
	private String address;
	private String email;
	private String hobby;
	private Timestamp createdDate;

	// Constructors

	/** default constructor */
	public AbstractClient() {
	}

	/** minimal constructor */
	public AbstractClient(String idCardNo, String clientName,
			Timestamp createdDate) {
		this.idCardNo = idCardNo;
		this.clientName = clientName;
		this.createdDate = createdDate;
	}

	/** full constructor */
	public AbstractClient(String idCardNo, String clientName, String sex,
			String phone, String address, String email, String hobby,
			Timestamp createdDate) {
		this.idCardNo = idCardNo;
		this.clientName = clientName;
		this.sex = sex;
		this.phone = phone;
		this.address = address;
		this.email = email;
		this.hobby = hobby;
		this.createdDate = createdDate;
	}

	// Property accessors

	public String getIdCardNo() {
		return this.idCardNo;
	}

	public void setIdCardNo(String idCardNo) {
		this.idCardNo = idCardNo;
	}

	public String getClientName() {
		return this.clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHobby() {
		return this.hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public Timestamp getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}

}