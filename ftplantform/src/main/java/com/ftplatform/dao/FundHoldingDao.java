package com.ftplatform.dao;

import java.util.List;

import com.ftplatform.domain.FundHolding;

public interface FundHoldingDao {

	 void add(FundHolding fundholding);
	 FundHolding fundHoldbyAccNo(Integer accNo,Integer fundNo);
	 void update(FundHolding fundholding);
	List<FundHolding> fundHoldbyAccNo(Integer accNo);
}
