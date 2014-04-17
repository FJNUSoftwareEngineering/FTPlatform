package com.ftplatform.service.impl;

import com.ftplatform.dao.FinancialAccountDao;
import com.ftplatform.domain.FinancialAccount;
import com.ftplatform.service.FinancialAccountService;

public class FinancialAccountServiceImpl implements FinancialAccountService {

	private FinancialAccountDao financialAccountDao;

	public FinancialAccountDao getFinancialAccountDao() {
		return financialAccountDao;
	}

	public void setFinancialAccountDao(FinancialAccountDao financialAccountDao) {
		this.financialAccountDao = financialAccountDao;
	}

	@Override
	public void createFinancialAccount(FinancialAccount financialAccount) {
		// TODO Auto-generated method stub
		financialAccountDao.add(financialAccount);
	}

	@Override
	public Integer total() {
		// TODO Auto-generated method stub
		return financialAccountDao.total();
	}

	@Override
	public void updateAccount(FinancialAccount financialAccount) {
		// TODO Auto-generated method stub
		financialAccountDao.updateAccount(financialAccount);
	}

	@Override
	public FinancialAccount findFinancialAccountByNo(Integer acc_no) {
		// TODO Auto-generated method stub
		return financialAccountDao.findFinancialAccountByNo(acc_no);

	}

}
