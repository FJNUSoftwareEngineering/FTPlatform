package com.ftplatform.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.ftplatform.domain.FinancialAccount;
import com.ftplatform.domain.Fund;
import com.ftplatform.domain.FundHolding;
import com.ftplatform.domain.FundTransinfo;
import com.ftplatform.service.FinancialAccountService;
import com.ftplatform.service.FundHoldingService;
import com.ftplatform.service.FundService;
import com.ftplatform.service.FundTransinfoService;
import com.ftplatform.service.impl.FundHoldingServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class HoldingAction extends ActionSupport {
	private Integer hid;
	private Integer accNo;
	private Integer fundNo;
	private Integer amount;
	private FundHoldingService fundHoldingService;
	private Fund fund;
	private FundHolding fundHolding;
	private FinancialAccount financialAccount;
	private FundTransinfoService fundTransinfoService;
	private FundTransinfo fundTransinfo;
	private FundService fundService;
	private FinancialAccountService financialAccountService;
	public Integer getHid() {
		return hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
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

	public FundHoldingService getFundHoldingService() {
		return fundHoldingService;
	}

	public void setFundHoldingService(FundHoldingService fundHoldingService) {
		this.fundHoldingService = fundHoldingService;
	}

	public void setFundHoldingService(
			FundHoldingServiceImpl fundHoldingServiceImpl) {
		this.fundHoldingService = fundHoldingServiceImpl;
	}

	public Fund getFund() {
		return fund;
	}

	public void setFund(Fund fund) {
		this.fund = fund;
	}

	public FinancialAccount getFinancialAccount() {
		return financialAccount;
	}

	public void setFinancialAccount(FinancialAccount financialAccount) {
		this.financialAccount = financialAccount;
	}

	public FundHolding getFundHolding() {
		return fundHolding;
	}

	public void setFundHolding(FundHolding fundHolding) {
		this.fundHolding = fundHolding;

	}

	public FundTransinfoService getFundTransinfoService() {
		return fundTransinfoService;
	}

	public void setFundTransinfoService(
			FundTransinfoService fundTransinfoService) {
		this.fundTransinfoService = fundTransinfoService;
	}

	public FundService getFundService() {
		return fundService;
	}

	public void setFundService(FundService fundService) {
		this.fundService = fundService;
	}

	public FinancialAccountService getFinancialAccountService() {
		return financialAccountService;
	}

	public void setFinancialAccountService(
			FinancialAccountService financialAccountService) {
		this.financialAccountService = financialAccountService;
	}

	public String addholding() throws Exception {
		FundHolding temp_relust = new FundHolding();
		fundNo = fund.getFundNo();
		temp_relust = fundHoldingService.fundHoldbyAccNo(financialAccount
				.getAccNo(),fundNo);
		financialAccount=financialAccountService.findFinancialAccountByNo(financialAccount
				.getAccNo());
		
		accNo = financialAccount.getAccNo();
	
		if (temp_relust == null) {
			fundHolding.setAccNo(accNo);
			fundHolding.setFundNo(fundNo);
			amount = fundHolding.getAmount();
			fundHolding.setAmount(amount);
			fundHoldingService.createFund(fundHolding);
			financialAccount.setAccAmount(financialAccount.getAccAmount()-amount*fund.getPrice());
		} else {
			fundHolding.setHid(temp_relust.getHid());
			fundHolding.setAccNo(accNo);
			fundHolding.setFundNo(fundNo);
			amount = fundHolding.getAmount();
			fundHolding.setAmount(temp_relust.getAmount() + amount);
			fundHoldingService.updateHolding(fundHolding);
			financialAccount.setAccAmount(financialAccount.getAccAmount()-fundHolding.getAmount()*fund.getPrice());
		}
		
		financialAccountService.updateAccount(financialAccount);	
		fundTransinfo = new FundTransinfo();
		fundTransinfo.setAccNo(accNo);
		fundTransinfo.setFundNo(fundNo);
		fundTransinfo.setAmount(amount);
		fundTransinfo.setPrice(fund.getPrice());
		fundTransinfo.setTransType("B");
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp createdate = Timestamp.valueOf(sdf.format(dt));
		fundTransinfo.setCreateDate(createdate);
		fundTransinfoService.createFundTransinfo(fundTransinfo);

		return "buylist";

	}

	public String backholding() throws Exception {

		FundHolding temp_relust = new FundHolding();
		fundNo = fund.getFundNo();
		temp_relust = fundHoldingService.fundHoldbyAccNo(financialAccount
				.getAccNo(),fundNo);
		financialAccount=financialAccountService.findFinancialAccountByNo(financialAccount
				.getAccNo());
		Fund temp = fundService.findFundByNo(fundNo);
		if (temp_relust == null) {

		} else{
			if (temp_relust.getAmount() < fundHolding.getAmount()) {

			} else {
				accNo = financialAccount.getAccNo();
				
				fundHolding.setHid(temp_relust.getHid());
				fundHolding.setAccNo(accNo);
				fundHolding.setFundNo(fundNo);
				amount = fundHolding.getAmount();
				fundHolding.setAmount(temp_relust.getAmount() - amount);
				fundHoldingService.updateHolding(fundHolding);
				
				fundTransinfo = new FundTransinfo();
				fundTransinfo.setAccNo(accNo);
				fundTransinfo.setFundNo(fundNo);
				fundTransinfo.setAmount(amount);
				fundTransinfo.setPrice(temp.getPrice());
				fundTransinfo.setTransType("G");
				Date dt = new Date();
				SimpleDateFormat sdf = new SimpleDateFormat(
						"yyyy-MM-dd HH:mm:ss");
				Timestamp createdate = Timestamp.valueOf(sdf.format(dt));
				fundTransinfo.setCreateDate(createdate);
				fundTransinfoService.createFundTransinfo(fundTransinfo);
				financialAccount.setAccAmount(financialAccount.getAccAmount()+fundHolding.getAmount()*temp.getPrice());
				financialAccountService.updateAccount(financialAccount);	
			}
		}
		return SUCCESS;

	}
}
