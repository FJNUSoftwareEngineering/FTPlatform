package com.ftplatform.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.ftplatform.domain.Account;
import com.ftplatform.domain.Client;
import com.ftplatform.service.ClientService;
import com.ftplatform.service.impl.ClientServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ClientInfoAction extends ActionSupport {
	private String id_card_no;
	private String client_name;
	private String sex;
	private String phone;
	private String address;
	private String email;
	private String hobby;
	private Timestamp created_date;
	private ClientService clientService;

	public String getId_card_no() {
		return id_card_no;
	}

	public void setId_card_no(String id_card_no) {
		this.id_card_no = id_card_no;
	}

	public String getClient_name() {
		return client_name;
	}

	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public Timestamp getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Timestamp created_date) {
		this.created_date = created_date;
	}

	public ClientService getClientService() {
		return clientService;
	}

	public void setClientService(ClientService clientService) {
		this.clientService = clientService;
	}

	public void setClientService(ClientServiceImpl clientServiceImpl) {
		this.clientService = clientServiceImpl;
	}

	public String addclient() throws Exception {
		Client client = new Client();
		client.setIdCardNo(id_card_no);
		client.setClientName(client_name);
		System.out.println(client_name);
		client.setPhone(phone);
		System.out.println(sex);
		client.setSex(sex);
		client.setAddress(address);
		client.setEmail(email);
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp createdate = Timestamp.valueOf(sdf.format(dt));
		client.setCreatedDate(createdate);
		clientService.createClient(client);
		return null;
	}

}
