package com.ftplatform.service.impl;

import com.ftplatform.dao.FundHoldingDao;
import com.ftplatform.domain.FundHolding;
import com.ftplatform.service.FundHoldingService;

public class FundHoldingServiceImpl implements FundHoldingService{

	private FundHoldingDao fundHoldingDao;
	
	public FundHoldingDao getFundHoldingDao() {
		return fundHoldingDao;
	}


	public void setFundHoldingDao(FundHoldingDao fundHoldingDao) {
		this.fundHoldingDao = fundHoldingDao;
	}



	@Override
	public void createFund(FundHolding fundholding) {
		// TODO Auto-generated method stub
		fundHoldingDao.add(fundholding);
	}


	@Override
	public FundHolding fundHoldbyAccNo(Integer accNo) {
		// TODO Auto-generated method stub
		return fundHoldingDao.fundHoldbyAccNo(accNo);
	}


	@Override
	public void updateHolding(FundHolding fundholding) {
		// TODO Auto-generated method stub
		fundHoldingDao.update(fundholding);
	}

}
