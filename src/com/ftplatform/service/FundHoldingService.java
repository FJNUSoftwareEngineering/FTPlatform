package com.ftplatform.service;

import com.ftplatform.domain.FundHolding;

public interface FundHoldingService {
	void createFund(FundHolding fundholding);
	 FundHolding fundHoldbyAccNo(Integer accNo);
	 void updateHolding(FundHolding fundholding);
}
