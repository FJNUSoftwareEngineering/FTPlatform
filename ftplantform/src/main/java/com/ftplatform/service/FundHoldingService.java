package com.ftplatform.service;

import java.util.List;

import com.ftplatform.domain.FundHolding;

public interface FundHoldingService {
	void createFund(FundHolding fundholding);
	 FundHolding fundHoldbyAccNo(Integer accNo,Integer fundNo);
	 void updateHolding(FundHolding fundholding);
	 List<FundHolding> fundHoldbyAccNo(Integer accNo);
}
