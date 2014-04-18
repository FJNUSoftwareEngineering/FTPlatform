package com.ftplatform.service;

import java.util.List;

import com.ftplatform.domain.Client;
import com.ftplatform.domain.ClientInfo;

public interface ClientService {

	 void createClient(Client client);
	 Client getClientByNo(Integer clientNo);
	 void update(Client client);
	 List<ClientInfo> loadall();
}
