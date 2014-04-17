package com.ftplatform.service;

import java.util.List;

import com.ftplatform.domain.Client;

public interface ClientService {

	 void createClient(Client client);
	 Client getClientByNo(Integer clientNo);
	 void update(Client client);
	 List<Client> loadall();
}
