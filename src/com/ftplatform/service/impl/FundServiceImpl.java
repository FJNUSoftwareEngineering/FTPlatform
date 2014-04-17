package com.ftplatform.service.impl;

import java.util.List;

import com.ftplatform.dao.FundDao;
import com.ftplatform.domain.Fund;
import com.ftplatform.service.FundService;

public class FundServiceImpl implements FundService {

	private FundDao fundDao;

	public FundDao getFundDao() {
		return fundDao;
	}

	public void setFundDao(FundDao fundDao) {
		this.fundDao = fundDao;
	}

	@Override
	public void createFund(Fund fund) {
		// TODO Auto-generated method stub
		fundDao.add(fund);
	}

	@Override
	public Integer total() {
		// TODO Auto-generated method stub

		return fundDao.total();
	}

	@Override
	public List<Fund> loadFund() {
		// TODO Auto-generated method stub
		return fundDao.loadFund();
	}
	@Override
	public Fund findFundByNo(Integer fund_no) {
		// TODO Auto-generated method stub
		return fundDao.findFundByNo(fund_no);
	}

	@Override
	public void update(Fund fund) {
		// TODO Auto-generated method stub
		fundDao.update(fund);
	}

}
