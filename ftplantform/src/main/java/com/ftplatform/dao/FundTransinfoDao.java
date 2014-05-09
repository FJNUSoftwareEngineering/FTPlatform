package com.ftplatform.dao;

import java.util.List;

import com.ftplatform.domain.FundTransinfo;
import com.ftplatform.domain.VO.FundTradeVO;

public interface FundTransinfoDao {

	void createFundTransinfo(FundTransinfo fundTransinfo);
	List<FundTradeVO> loadFundTransinfo();
}
