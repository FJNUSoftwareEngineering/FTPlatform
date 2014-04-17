package com.ftplatform.dao;

import com.ftplatform.domain.FinancialAccount;

public interface FinancialAccountDao {
	void add(FinancialAccount financialAccount);
	Integer total();
	void updateAccount(FinancialAccount financialAccount);
	FinancialAccount findFinancialAccountByNo(Integer acc_no);
	
	
}
