package com.ftplatform.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ftplatform.dao.FundHoldingDao;
import com.ftplatform.domain.Fund;
import com.ftplatform.domain.FundHolding;

public class FundHoldingDaoImpl implements FundHoldingDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void add(FundHolding fundholding) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(fundholding);
		session.flush();
		session.close();
	}

	@Override
	public FundHolding fundHoldbyAccNo(Integer accNo,Integer fundNo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from FundHolding a where a.accNo="
				+ accNo + " and a.fundNo="+fundNo);
		List<FundHolding> list = query.list();
		session.close();
		// System.out.println(list.size());
		if (list.size() > 0)
			return list.get(0);
		else
			return null;
	}

	@Override
	public void update(FundHolding fundholding) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.update(fundholding);
		session.flush();
		session.close();
	}

	@Override
	public List<FundHolding> fundHoldbyAccNo(Integer accNo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from FundHolding a where a.accNo="
				+ accNo);
		List<FundHolding> list = query.list();
		session.close();
		// System.out.println(list.size());
		if (list.size() > 0)
			return list;
		else
			return null;
	}

}
