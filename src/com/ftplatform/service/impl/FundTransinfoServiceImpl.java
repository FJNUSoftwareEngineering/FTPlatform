package com.ftplatform.service.impl;

import java.util.List;

import com.ftplatform.dao.FundTransinfoDao;
import com.ftplatform.domain.FundTransinfo;
import com.ftplatform.domain.VO.FundTradeVO;
import com.ftplatform.service.FundTransinfoService;

public class FundTransinfoServiceImpl implements FundTransinfoService{

	private FundTransinfoDao fundTransinfoDao;
	
	
	
	public FundTransinfoDao getFundTransinfoDao() {
		return fundTransinfoDao;
	}



	public void setFundTransinfoDao(FundTransinfoDao fundTransinfoDao) {
		this.fundTransinfoDao = fundTransinfoDao;
	}



	@Override
	public void createFundTransinfo(FundTransinfo fundTransinfo) {
		// TODO Auto-generated method stub
		fundTransinfoDao.createFundTransinfo(fundTransinfo);
	}



	@Override
	public List<FundTradeVO> loadFundTransinfo() {
		// TODO Auto-generated method stub
		return fundTransinfoDao.loadFundTransinfo();
	}

}
