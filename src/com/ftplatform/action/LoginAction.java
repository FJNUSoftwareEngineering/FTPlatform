package com.ftplatform.action;

import com.ftplatform.domain.Account;
import com.ftplatform.service.AccountService;
import com.ftplatform.service.impl.AccountServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private Integer account_id;
	private String account_pwd;
	private AccountService accountService;

	public Integer getAccount_id() {
		return account_id;
	}

	public void setAccount_id(Integer account_id) {
		this.account_id = account_id;
	}

	public String getAccount_pwd() {
		return account_pwd;
	}

	public void setAccount_pwd(String account_pwd) {
		this.account_pwd = account_pwd;
	}

	public AccountService getAccountService() {
		return accountService;
	}

	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}

	public void setAccountService(AccountServiceImpl accountServiceImpl) {
		this.accountService = accountServiceImpl;
	}

	public String login() throws Exception {
		Account account = new Account();
		account = accountService.getAccountByNo(account_id);
		if (account.getAccountPwd().equals(account_pwd)) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
}
