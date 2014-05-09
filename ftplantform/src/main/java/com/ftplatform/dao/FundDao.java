package com.ftplatform.dao;

import java.util.List;

import com.ftplatform.domain.Fund;

public interface FundDao {
	 void add(Fund fund);
	 Integer total();
	 List<Fund> loadFund();
	 Fund findFundByNo(Integer fundNo);
	 void update(Fund fund);
}
