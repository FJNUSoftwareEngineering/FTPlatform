package com.ftplatform.service;

import com.ftplatform.domain.FinancialAccount;
import com.ftplatform.domain.Fund;

public interface FinancialAccountService {
	void createFinancialAccount(FinancialAccount financialAccount);

	Integer total();

	void updateAccount(FinancialAccount financialAccount);

	FinancialAccount findFinancialAccountByNo(Integer acc_no);
	

}
