package com.ftplatform.domain;

import java.sql.Timestamp;

/**
 * Client entity. @author MyEclipse Persistence Tools
 */
public class Client extends AbstractClient implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Client() {
	}

	/** minimal constructor */
	public Client(String idCardNo, String clientName, Timestamp createdDate) {
		super(idCardNo, clientName, createdDate);
	}

	/** full constructor */
	public Client(String idCardNo, String clientName, String sex, String phone,
			String address, String email, String hobby, Timestamp createdDate) {
		super(idCardNo, clientName, sex, phone, address, email, hobby,
				createdDate);
	}

}
