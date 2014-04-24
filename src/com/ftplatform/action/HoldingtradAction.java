package com.ftplatform.action;

import java.sql.Timestamp;
import java.util.List;

import com.ftplatform.domain.FundTransinfo;
import com.ftplatform.domain.VO.FundTradeVO;
import com.ftplatform.service.FundTransinfoService;
import com.opensymphony.xwork2.ActionSupport;

public class HoldingtradAction extends ActionSupport {
	private Integer transId;
	private String transType;
	private Integer accNo;
	private Integer fundNo;
	private Integer amount;
	private Integer price;
	private Timestamp createDate;
	private FundTransinfo fundTransinfo;
	private FundTransinfoService fundTransinfoService;
	private FundTradeVO fundTradeVO;
	private List<FundTradeVO> fundTradeVO_list;
	public Integer getTransId() {
		return transId;
	}
	public void setTransId(Integer transId) {
		this.transId = transId;
	}
	public String getTransType() {
		return transType;
	}
	public void setTransType(String transType) {
		this.transType = transType;
	}
	public Integer getAccNo() {
		return accNo;
	}
	public void setAccNo(Integer accNo) {
		this.accNo = accNo;
	}
	public Integer getFundNo() {
		return fundNo;
	}
	public void setFundNo(Integer fundNo) {
		this.fundNo = fundNo;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Integer getPrice() {
		return price;
	}
	
	public List<FundTradeVO> getFundTradeVO_list() {
		return fundTradeVO_list;
	}
	public void setFundTradeVO_list(List<FundTradeVO> fundTradeVO_list) {
		this.fundTradeVO_list = fundTradeVO_list;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	public FundTransinfo getFundTransinfo() {
		return fundTransinfo;
	}
	public void setFundTransinfo(FundTransinfo fundTransinfo) {
		this.fundTransinfo = fundTransinfo;
	}
	public FundTransinfoService getFundTransinfoService() {
		return fundTransinfoService;
	}
	public void setFundTransinfoService(FundTransinfoService fundTransinfoService) {
		this.fundTransinfoService = fundTransinfoService;
	}
	
	public FundTradeVO getFundTradeVO() {
		return fundTradeVO;
	}
	public void setFundTradeVO(FundTradeVO fundTradeVO) {
		this.fundTradeVO = fundTradeVO;
	}
	public String loadfundtransinfo() throws Exception{
		fundTradeVO_list=fundTransinfoService.loadFundTransinfo();
		
		return "list";	
	}
}
