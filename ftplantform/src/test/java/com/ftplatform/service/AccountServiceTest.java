package com.ftplatform.service;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ftplatform.domain.Account;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/applicationContext.xml")
public class AccountServiceTest {
	@Resource
	private AccountService accountService;
	private String accountNo;
	@Before
	public void init(){
		
	}
	@Test
	public void test(){
		Account account = accountService.getAccountByNo(1000);
		boolean flag=true;
		if(account==null)
			flag=false;
		assertEquals(true,flag);
	}

}
