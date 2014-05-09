package com.ftplatform.action;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.ftplatform.domain.FinancialAccount;
import com.ftplatform.domain.Fund;
import com.ftplatform.domain.FundHolding;
import com.ftplatform.domain.FundTransinfo;
import com.ftplatform.domain.VO.FundTradeVO;
import com.ftplatform.domain.VO.PersonalHoldingVO;
import com.ftplatform.service.FinancialAccountService;
import com.ftplatform.service.FundHoldingService;
import com.ftplatform.service.FundService;
import com.ftplatform.service.FundTransinfoService;
import com.opensymphony.xwork2.ActionSupport;

public class HoldingtradAction extends ActionSupport {
	private Integer accNo;
	private FundTransinfo fundTransinfo;
	private FundTransinfoService fundTransinfoService;
	private FundTradeVO fundTradeVO;
	private List<FundTradeVO> fundTradeVO_list;
	private FinancialAccountService financialAccountService;
	private FinancialAccount financialAccount;
    private FundHoldingService fundHoldingService;
	private List<FundHolding> fundHolding_list;
	private FundService fundService;
	private List<PersonalHoldingVO> personalHoldingVO_list;
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

	public FundTransinfo getFundTransinfo() {
		return fundTransinfo;
	}

	public void setFundTransinfo(FundTransinfo fundTransinfo) {
		this.fundTransinfo = fundTransinfo;
	}

	public FundTransinfoService getFundTransinfoService() {
		return fundTransinfoService;
	}

	public void setFundTransinfoService(
			FundTransinfoService fundTransinfoService) {
		this.fundTransinfoService = fundTransinfoService;
	}

	public FundTradeVO getFundTradeVO() {
		return fundTradeVO;
	}

	public void setFundTradeVO(FundTradeVO fundTradeVO) {
		this.fundTradeVO = fundTradeVO;
	}

	public FinancialAccount getFinancialAccount() {
		return financialAccount;
	}

	public void setFinancialAccount(FinancialAccount financialAccount) {
		this.financialAccount = financialAccount;
	}

	public FinancialAccountService getFinancialAccountService() {
		return financialAccountService;
	}

	public void setFinancialAccountService(
			FinancialAccountService financialAccountService) {
		this.financialAccountService = financialAccountService;
	}

	public FundHoldingService getFundHoldingService() {
		return fundHoldingService;
	}

	public void setFundHoldingService(FundHoldingService fundHoldingService) {
		this.fundHoldingService = fundHoldingService;
	}

	

	public Integer getAccNo() {
		return accNo;
	}

	public void setAccNo(Integer accNo) {
		this.accNo = accNo;
	}

	public FundService getFundService() {
		return fundService;
	}

	public void setFundService(FundService fundService) {
		this.fundService = fundService;
	}

	public List<PersonalHoldingVO> getPersonalHoldingVO_list() {
		return personalHoldingVO_list;
	}

	
	public List<FundTradeVO> getFundTradeVO_list() {
		return fundTradeVO_list;
	}

	public void setFundTradeVO_list(List<FundTradeVO> fundTradeVO_list) {
		this.fundTradeVO_list = fundTradeVO_list;
	}

	public void setPersonalHoldingVO_list(
			List<PersonalHoldingVO> personalHoldingVO_list) {
		this.personalHoldingVO_list = personalHoldingVO_list;
	}
	public String loadfundtransinfo() throws Exception {
		fundTradeVO_list = fundTransinfoService.loadFundTransinfo();
		return "fundTradeVO_list";
	}
	public String searchholding() throws Exception {
		List<PersonalHoldingVO> temp_list=new ArrayList<PersonalHoldingVO>();
		financialAccount = new FinancialAccount();
		financialAccount = financialAccountService
				.findFinancialAccountByNo(accNo);
		if(financialAccount==null)
		{
		   return "error";
		}else{
		if (financialAccount.getAccStatus().equals("A")) {
			financialAccount.setAccStatus("正常");
		} else {
			financialAccount.setAccStatus("冻结");
		}
		
		fundHolding_list=fundHoldingService.fundHoldbyAccNo(accNo);
		for(int i=0;i<fundHolding_list.size();i++)
		{
			PersonalHoldingVO personalHoldingVO=new PersonalHoldingVO();
			Fund fund=new Fund();
			fund=fundService.findFundByNo(fundHolding_list.get(i).getFundNo());
			personalHoldingVO.setFundNo(fund.getFundNo());
			personalHoldingVO.setFundName(fund.getFundName());
			personalHoldingVO.setAmount(fundHolding_list.get(i).getAmount());
			personalHoldingVO.setPrice(fund.getPrice());
			temp_list.add(personalHoldingVO);
		}
		personalHoldingVO_list=temp_list;
		return "personalHoldingVO_list";
		}
	}
}
