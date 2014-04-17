package com.ftplatform.service.impl;

import com.ftplatform.dao.AccountDao;
import com.ftplatform.dao.impl.AccountDaoImpl;
import com.ftplatform.domain.Account;
import com.ftplatform.service.AccountService;

public class AccountServiceImpl implements AccountService {

	private AccountDao accountDao;
	
	public AccountDao getAccountDao() {
		return accountDao;
	}

	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

	@Override
	public Account getAccountByNo(Integer accountNo) {
		// TODO Auto-generated method stub
		return accountDao.getAccountByNo(accountNo);
	}

}
