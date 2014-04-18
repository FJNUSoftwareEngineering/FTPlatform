package com.ftplatform.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
	private Date created_date;
	private FundService fundService;
	private List<Fund> fundlist;
	private Fund fund = null;

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

	public Date getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}

	public Fund getFund() {
		return fund;
	}

	public void setFund(Fund fund) {
		this.fund = fund;
	}

	public List<Fund> getFundlist() {
		return fundlist;
	}

	public void setFundlist(List<Fund> fundlist) {
		this.fundlist = fundlist;
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
		fund.setFundNo(100000 + fundService.total());
		fund.setFundName(fund_name);
		fund.setPrice(Double.valueOf(fundprice));
		fund.setDescription(description);
		fund.setStatus("Y");
		fund.setCreatedDate(created_date);

		fundService.createFund(fund);
		return SUCCESS;

	}

	public String loadFunds() throws Exception {
		fundlist = fundService.loadFund();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < fundlist.size(); i++) {
			fundlist.get(i).setCreatedDate(
					java.sql.Date.valueOf(sdf.format(fundlist.get(i)
							.getCreatedDate())));
		}
		return "list";
	}

	public String loadAFund() throws Exception {
		fund = fundService.findFundByNo(fund.getFundNo());
		if (fund.getStatus().equals("Y"))
			fund.setStatus("可交易");
		else if (fund.getStatus().equals("N"))
			fund.setStatus("未上市交易");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		fund.setCreatedDate(java.sql.Date.valueOf(sdf.format(fund
				.getCreatedDate())));
		return "alterfund";
	}

	public String updateFund() throws Exception {
		if (fund.getStatus().equals("可交易")) {
			fund.setStatus("Y");
		} else {
			fund.setStatus("N");
		}
		fundService.update(fund);
		return SUCCESS;
	}
}
