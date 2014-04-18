package com.ftplatform.domain;

public abstract class AbstractClientInfo implements java.io.Serializable {
	private String idCardNo;
	private String clientName;
	private Double accAmount;
	private Double accTotalAmount;

	// Constructors

	/** default constructor */
	public AbstractClientInfo() {
	}

	/** default constructor */
	public AbstractClientInfo(String idCardNo, String clientName, Double accAmount,
			Double accTotalAmount) {
		this.idCardNo = idCardNo;
		this.clientName = clientName;
		this.accAmount = accAmount;
		this.accTotalAmount = accTotalAmount;
	}

	public String getIdCardNo() {
		return idCardNo;
	}

	public void setIdCardNo(String idCardNo) {
		this.idCardNo = idCardNo;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public Double getAccAmount() {
		return accAmount;
	}

	public void setAccAmount(Double accAmount) {
		this.accAmount = accAmount;
	}

	public Double getAccTotalAmount() {
		return accTotalAmount;
	}

	public void setAccTotalAmount(Double accTotalAmount) {
		this.accTotalAmount = accTotalAmount;
	}



}
