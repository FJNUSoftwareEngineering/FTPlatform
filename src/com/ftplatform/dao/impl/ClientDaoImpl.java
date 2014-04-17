package com.ftplatform.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ftplatform.dao.ClientDao;
import com.ftplatform.domain.Client;

public class ClientDaoImpl implements ClientDao {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void add(Client client) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(client);
		session.flush();
		session.close();
	}

	@Override
	public Client getClientByNo(Integer clientNo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("from Client a where a.ID_CARD_NO='123'");
		
		List<Client> list = query.list();
		session.close();
		return list.get(0);
	}

	@Override
	public void update(Client client) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.update(client);
		session.close();
	}

	@Override
	public List<Client> loadall() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("from Client");
		List<Client> list = query.list();
		session.close();
		return list;
	}

}
