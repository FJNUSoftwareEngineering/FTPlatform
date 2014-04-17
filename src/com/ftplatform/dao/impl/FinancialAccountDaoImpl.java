package com.ftplatform.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ftplatform.dao.FinancialAccountDao;
import com.ftplatform.domain.Account;
import com.ftplatform.domain.FinancialAccount;

public class FinancialAccountDaoImpl implements FinancialAccountDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void add(FinancialAccount financialAccount) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(financialAccount);
		session.flush();
		session.close();
	}

	@Override
	public Integer total() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session
				.createQuery("select count(*) from FinancialAccount");
		session.flush();
		Integer count = ((Number) query.uniqueResult()).intValue();
		session.close();
		return count;
	}

	@Override
	public void updateAccount(FinancialAccount financialAccount) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.update(financialAccount);
		session.flush();
		session.close();
	}

	@Override
	public FinancialAccount findFinancialAccountByNo(Integer acc_no) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from FinancialAccount a where a.accNo="
				+ acc_no);
		session.flush();
		List<FinancialAccount> list = query.list();

		session.close();
		if (list.size() > 0)
			return list.get(0);
		else
			return null;
	}

}
