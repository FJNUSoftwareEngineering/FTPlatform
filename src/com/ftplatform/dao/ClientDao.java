package com.ftplatform.dao;

import java.util.List;

import com.ftplatform.domain.Client;
import com.ftplatform.domain.ClientInfo;
import com.ftplatform.domain.VO.ClientFinancialVO;

public interface ClientDao {

    void add(Client client);
	Client getClientByNo(String idCardNo);
    void update(Client client);
	List<ClientInfo> loadall();
	List<ClientFinancialVO> loadclientfinancial(String idCardNo);
}
