package com.ftplatform.service;

import java.util.List;

import com.ftplatform.domain.Client;
import com.ftplatform.domain.ClientInfo;
import com.ftplatform.domain.VO.ClientFinancialVO;

public interface ClientService {

	void createClient(Client client);

	Client getClientByNo(String idCardNo);

	void update(Client client);

	List<ClientInfo> loadall();

	List<ClientFinancialVO> loadclientfinancial(String idCardNo);
}
