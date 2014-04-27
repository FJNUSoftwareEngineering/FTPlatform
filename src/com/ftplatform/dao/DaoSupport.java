package com.ftplatform.dao;

import org.hibernate.Criteria;
import org.hibernate.criterion.Projections;

import com.ftplantform.utils.Page;


public class DaoSupport {
	protected Page getQueryPage(Criteria cri,Page page){
			
		int count = ((Long)cri.setProjection(Projections.rowCount()).uniqueResult()).intValue();
		cri.setProjection(null);
		page.setSumcount(count);//总记录数 
		int pagenum=count/page.getPagesize();
		if(count%page.getPagesize()!=0)
			pagenum+=1;
		page.setPagecount(pagenum);//总页数
		int startNo=(page.getCurpage()-1)*page.getPagesize();
		int endNo=startNo+page.getPagesize();

		cri.setFirstResult(startNo);
		cri.setMaxResults(endNo);
	
		page.setResult(cri.list());
		return page;

	}
}

