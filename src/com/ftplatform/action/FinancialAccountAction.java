package com.ftplatform.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.ftplatform.domain.FinancialAccount;
import com.ftplatform.service.FinancialAccountService;
import com.opensymphony.xwork2.ActionSupport;

public class FinancialAccountAction extends ActionSupport {

	private Integer acc_no;
	private String acc_pwd;
	private String acc_amount;
	private String acc_status;
	private String idcard_no;
	private Timestamp created_date;
	private String acc_pwd_check;
	private FinancialAccountService financialAccountService;

	public Integer getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(Integer acc_no) {
		this.acc_no = acc_no;
	}

	public String getAcc_pwd() {
		return acc_pwd;
	}

	public void setAcc_pwd(String acc_pwd) {
		this.acc_pwd = acc_pwd;
	}

	public String getAcc_pwd_check() {
		return acc_pwd_check;
	}

	public void setAcc_pwd_check(String acc_pwd_check) {
		this.acc_pwd_check = acc_pwd_check;
	}

	public String getAcc_amount() {
		return acc_amount;
	}

	public void setAcc_amount(String acc_amount) {
		this.acc_amount = acc_amount;
	}

	public String getAcc_status() {
		return acc_status;
	}

	public void setAcc_status(String acc_status) {
		this.acc_status = acc_status;
	}

	public String getIdcard_no() {
		return idcard_no;
	}

	public void setIdcard_no(String idcard_no) {
		this.idcard_no = idcard_no;
	}

	public Timestamp getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Timestamp created_date) {
		this.created_date = created_date;
	}

	public FinancialAccountService getFinancialAccountService() {
		return financialAccountService;
	}

	public void setFinancialAccountService(
			FinancialAccountService financialAccountService) {
		this.financialAccountService = financialAccountService;
	}

	public String addfinancialaccount() throws Exception {
		FinancialAccount financialAccount = new FinancialAccount();
		// financialAccount.setAccNo(100000+financialAccountService.total());
		financialAccount.setAccPwd(acc_pwd);
		financialAccount.setAccStatus("A");
		financialAccount.setIdcardNo(idcard_no);
		financialAccount.setAccAmount(Double.valueOf(acc_amount));
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp createdate = Timestamp.valueOf(sdf.format(dt));
		created_date = createdate;
		financialAccount.setCreateDate(created_date);
		financialAccountService.createFinancialAccount(financialAccount);
		return null;

	}

	public String addfinancialamount() throws Exception {
		FinancialAccount financialAccount = new FinancialAccount();
		 financialAccount = financialAccountService
				.findFinancialAccountByNo(acc_no);
		 Double oldAmount =financialAccount.getAccAmount();
		Double newAmount = oldAmount + Double.valueOf(acc_amount);
		financialAccount.setAccAmount(newAmount);
		financialAccountService.updateAccount(financialAccount);
		return null;

	}

	public String deductfinancialamount() throws Exception {
		FinancialAccount financialAccount = new FinancialAccount();
		 financialAccount = financialAccountService
				.findFinancialAccountByNo(acc_no);
		 Double oldAmount =financialAccount.getAccAmount();
		Double newAmount = oldAmount - Double.valueOf(acc_amount);
		financialAccount.setAccAmount(newAmount);
		financialAccountService.updateAccount(financialAccount);
		return null;
	}
}
