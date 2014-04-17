package com.ftplatform.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ftplatform.dao.AccountDao;
import com.ftplatform.domain.Account;

public class AccountDaoImpl implements AccountDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public Account getAccountByNo(Integer accountNo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("from Account a where a.accountId="+accountNo+"");
		
		List<Account> list = query.list();
		session.close();
		//System.out.println(list.size());
		if(list.size()>0)
			return list.get(0);
		else
			return null;
	}

}
