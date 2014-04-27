package com.ftplatform.domain.VO;

public class PersonalHoldingVO {

	private Integer fundNo;
	private String fundName;
	private Integer amount;
	private Double price;
	public Integer getFundNo() {
		return fundNo;
	}
	public void setFundNo(Integer fundNo) {
		this.fundNo = fundNo;
	}
	public String getFundName() {
		return fundName;
	}
	public void setFundName(String fundName) {
		this.fundName = fundName;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	
}
