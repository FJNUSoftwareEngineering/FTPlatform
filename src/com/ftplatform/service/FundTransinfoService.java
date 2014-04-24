package com.ftplatform.service;

import java.util.List;

import com.ftplatform.domain.FundTransinfo;
import com.ftplatform.domain.VO.FundTradeVO;

public interface FundTransinfoService {

	void createFundTransinfo(FundTransinfo fundTransinfo);
	List<FundTradeVO> loadFundTransinfo();
}
