package com.ftplatform.dao.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ftplatform.dao.ClientDao;
import com.ftplatform.domain.Client;
import com.ftplatform.domain.ClientInfo;

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
	public Client getClientByNo(String idCardNo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session
				.createQuery("from Client a where a.idCardNo="+idCardNo+"");
		List<Client> list = query.list();
		session.close();
		return list.get(0);
	}

	@Override
	public void update(Client client) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.update(client);
		session.flush();
		session.close();
	}

	@Override
	public List<ClientInfo> loadall() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		SQLQuery SQLquery = session
				.createSQLQuery("SELECT a.id_card_no,a.client_name,b.acc_amount,b.acc_total_amount FROM Client a left join Financial_account b on a.id_card_no=b.idcard_no");

		SQLquery.addScalar("id_card_no").addScalar("client_name")
				.addScalar("acc_amount").addScalar("acc_total_amount");
		Iterator results = SQLquery.list().iterator();

		List<ClientInfo> clientinfo_list = new ArrayList<ClientInfo>();
		while (results.hasNext()) {
			ClientInfo clientinfo = new ClientInfo();
			Object[] rows = (Object[]) results.next();
			clientinfo.setIdCardNo((String) rows[0]);
			clientinfo.setClientName((String) rows[1]);
			if (rows[2]==null) {
				clientinfo.setAccAmount(0.00);
			} else {
				clientinfo.setAccAmount(((java.math.BigDecimal) rows[2])
						.doubleValue());
			}
			if (rows[3]==null) {
				clientinfo.setAccTotalAmount(0.00);
			} else {
				clientinfo.setAccTotalAmount(((java.math.BigDecimal) rows[3])
						.doubleValue());
			}
			clientinfo_list.add(clientinfo);
		}
		session.close();
		return clientinfo_list;
	}

}
