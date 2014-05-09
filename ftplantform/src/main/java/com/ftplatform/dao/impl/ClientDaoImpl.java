package com.ftplatform.dao.impl;

import java.sql.Timestamp;
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
import com.ftplatform.domain.VO.ClientFinancialVO;

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
		Query query = session.createQuery("from Client a where a.idCardNo="
				+ idCardNo + "");
		List<Client> list = query.list();
		session.close();
		if (list.size() > 0)
			return list.get(0);
		else
			return null;
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
			if (rows[2] == null) {
				clientinfo.setAccAmount(0.00);
			} else {
				clientinfo.setAccAmount(((java.math.BigDecimal) rows[2])
						.doubleValue());
			}
			if (rows[3] == null) {
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

	@Override
	public List<ClientFinancialVO> loadclientfinancial(String idCardNo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		SQLQuery SQLquery = session
				.createSQLQuery("SELECT a.idcard_no,b.fund_name,c.amount,b.price,a.acc_status,a.create_date,a.acc_no from financial_account a,fund b,fund_holding c where a.acc_no=c.acc_no and c.fund_no=b.fund_no and a.idcard_no='"
						+ idCardNo + "'");
		SQLquery.addScalar("idcard_no").addScalar("fund_name")
				.addScalar("amount").addScalar("price").addScalar("acc_status")
				.addScalar("create_date").addScalar("acc_no");
		Iterator results = SQLquery.list().iterator();
		List<ClientFinancialVO> clientFinancial_list = new ArrayList<ClientFinancialVO>();
		while (results.hasNext()) {
			ClientFinancialVO clientFinancial= new ClientFinancialVO();
			Object[] rows = (Object[]) results.next();
			clientFinancial.setIdCardNo((String) rows[0]);
			clientFinancial.setFundName((String) rows[1]);
			clientFinancial.setAmount((Integer)rows[2]);
			clientFinancial.setPrice(((java.math.BigDecimal) rows[3])
				.doubleValue());
		    if(rows[4].equals('A'))
		    {
		    	clientFinancial.setStatus("正常");
		    }else 
		    {
		    	clientFinancial.setStatus("冻结");
		    }
		    clientFinancial.setCreateDate((Timestamp)rows[5]);
		    clientFinancial.setAccNo((Integer)rows[6]);
			clientFinancial_list.add(clientFinancial);
		}
		session.close();
		return clientFinancial_list;
	}

}
