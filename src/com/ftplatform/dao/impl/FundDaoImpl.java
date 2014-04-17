package com.ftplatform.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ftplatform.dao.FundDao;
import com.ftplatform.domain.Fund;

public class FundDaoImpl implements FundDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void add(Fund fund) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(fund);
		session.flush();
		session.close();
	}

	@Override
	public Integer total() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("select count(*) from Fund");
		session.flush();
		Integer count = ((Number)query.uniqueResult()).intValue();
		session.close();
		return count;

	}

}
