package com.ftplatform.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.ftplatform.domain.Fund;
import com.ftplatform.service.FundService;
import com.ftplatform.service.impl.FundServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class FundAction extends ActionSupport {

	private Integer fund_no;
	private String fund_name;
	private String fundprice;
	private String description;
	private String status;
	private Timestamp created_date;
	private FundService fundService;

	public Integer getFund_no() {
		return fund_no;
	}

	public void setFund_no(Integer fund_no) {
		this.fund_no = fund_no;
	}

	public String getFund_name() {
		return fund_name;
	}

	public void setFund_name(String fund_name) {
		this.fund_name = fund_name;
	}

	public String getFundprice() {
		return fundprice;
	}

	public void setFundprice(String fundprice) {
		this.fundprice = fundprice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Timestamp getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Timestamp created_date) {
		this.created_date = created_date;
	}



	public FundService getFundService() {
		return fundService;
	}

	public void setFundService(FundService fundService) {
		this.fundService = fundService;
	}
	public void setFundService(FundServiceImpl fundServiceImpl) {
		this.fundService = fundServiceImpl;
	}
	public String addfund() throws Exception {
		Fund fund = new Fund();
		status = "Y";
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp createdate = Timestamp.valueOf(sdf.format(dt));
		created_date = createdate;	
		fund.setFundNo(1000+fundService.total());
		fund.setFundName(fund_name);
		fund.setPrice(Double.valueOf(fundprice));
		fund.setDescription(description);
		fund.setStatus("Y");
		fund.setCreatedDate(created_date);
		
		fundService.createFund(fund);
		return null;

	}
}
