package com.ftplatform.domain.VO;

import java.sql.Timestamp;

public class FinancialAccountVO {

	private Integer accNo;
	private Double accTotalAmount;
	private Timestamp createdDate;
	private String idCardNo;
	private String clientName;
	private String status;
	public Integer getAccNo() {
		return accNo;
	}
	public void setAccNo(Integer accNo) {
		this.accNo = accNo;
	}
	public Double getAccTotalAmount() {
		return accTotalAmount;
	}
	public void setAccTotalAmount(Double accTotalAmount) {
		this.accTotalAmount = accTotalAmount;
	}
	public Timestamp getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
