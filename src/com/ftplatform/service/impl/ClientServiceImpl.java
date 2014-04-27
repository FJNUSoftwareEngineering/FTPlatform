package com.ftplatform.service.impl;

import java.util.List;

import com.ftplatform.dao.ClientDao;
import com.ftplatform.dao.impl.ClientDaoImpl;
import com.ftplatform.domain.Client;
import com.ftplatform.domain.ClientInfo;
import com.ftplatform.domain.VO.ClientFinancialVO;
import com.ftplatform.service.ClientService;

public class ClientServiceImpl implements ClientService {

	private ClientDao clientDao;
	
	public ClientDao getClientDao() {
		return clientDao;
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}

	@Override
	public void createClient(Client client) {
		// TODO Auto-generated method stub
        clientDao.add(client);
	}

	@Override
	public Client getClientByNo(String idCardNo) {
		// TODO Auto-generated method stub
		return clientDao.getClientByNo(idCardNo);
	}

	@Override
	public void update(Client client) {
		// TODO Auto-generated method stub
		clientDao.update(client);
	}

	@Override
	public List<ClientInfo> loadall() {
		// TODO Auto-generated method stub
		return clientDao.loadall();
	}

	@Override
	public List<ClientFinancialVO> loadclientfinancial(String idCardNo) {
		// TODO Auto-generated method stub
		return clientDao.loadclientfinancial(idCardNo);
	}

}
