package com.ftplantform.utils;

import java.util.List;

public class Page {
	private int pagesize;//每页显示个数
	private int curpage;//当前�?
	private int pagecount;//总页�?
	private int sumcount;//总记录数
	private List result;

	public int getSumcount() {
		return sumcount;
	}
	public void setSumcount(int sumcount) {
		this.sumcount = sumcount;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}
	public int getCurpage() {
		return curpage;
	}
	public void setCurpage(int curpage) {
		this.curpage = curpage;
	}
	
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public List getResult() {
		return result;
	}
	public void setResult(List result) {
		this.result = result;
	}

}

