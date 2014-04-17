package com.ftplatform.service;

import java.util.List;

import com.ftplatform.domain.Fund;

public interface FundService {
	 void createFund(Fund fund);
	 Integer total();
	 List<Fund> loadFund();
}
