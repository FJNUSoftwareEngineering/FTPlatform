package com.ftplatform.dao;

import java.util.List;

import com.ftplatform.domain.Client;

public interface ClientDao {

    void add(Client client);
	Client getClientByNo(Integer clientNo);
    void update(Client client);
	List<Client> loadall();
}
