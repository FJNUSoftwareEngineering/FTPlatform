package com.ftplatform.dao.impl;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ftplatform.dao.FundTransinfoDao;
import com.ftplatform.domain.FundTransinfo;
import com.ftplatform.domain.VO.FundTradeVO;

public class FundTransinfoDaoImpl implements FundTransinfoDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void createFundTransinfo(FundTransinfo fundTransinfo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(fundTransinfo);
		session.flush();
		session.close();
	}

	@Override
	public List<FundTradeVO> loadFundTransinfo() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		SQLQuery SQLquery = session
				.createSQLQuery("select a.*,b.fund_name from fund_transinfo a,fund b where a.fund_no=b.fund_no order by create_date desc; ");
		SQLquery.addScalar("TRANS_ID").addScalar("TRANS_TYPE")
				.addScalar("ACC_NO").addScalar("FUND_NO").addScalar("AMOUNT")
				.addScalar("PRICE").addScalar("CREATE_DATE")
				.addScalar("fund_name");
		Iterator results = SQLquery.list().iterator();
		List<FundTradeVO> fundTradeVO_list = new ArrayList<FundTradeVO>();
		while (results.hasNext()) {
			FundTradeVO fundTradeVO = new FundTradeVO();
			Object[] rows = (Object[]) results.next();
		    String type =null;
			if (rows[1].equals('B')) {
				type = "+";
			} else {
				type = "-";
			}
			fundTradeVO.setTradeAmount(type + (Integer) rows[4]);
			fundTradeVO.setAccNo((Integer) rows[2]);
			fundTradeVO.setFundName((String) rows[7]);
			fundTradeVO.setFundNo((Integer) rows[3]);
			fundTradeVO.setPrice(((java.math.BigDecimal) rows[5]).doubleValue());
			fundTradeVO.setCreateDate((Timestamp) rows[6]);
			fundTradeVO_list.add(fundTradeVO);
		}
		session.close();
		return fundTradeVO_list;
	}
}
