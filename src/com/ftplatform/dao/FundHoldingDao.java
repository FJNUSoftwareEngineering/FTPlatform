package com.ftplatform.dao;

import com.ftplatform.domain.FundHolding;

public interface FundHoldingDao {

	 void add(FundHolding fundholding);
	 FundHolding fundHoldbyAccNo(Integer accNo);
	 void update(FundHolding fundholding);
}
