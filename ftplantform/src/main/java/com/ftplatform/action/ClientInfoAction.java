package com.ftplatform.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.ftplatform.domain.Client;
import com.ftplatform.domain.ClientInfo;
import com.ftplatform.domain.FinancialAccount;
import com.ftplatform.domain.VO.ClientFinancialVO;
import com.ftplatform.service.ClientService;
import com.ftplatform.service.FinancialAccountService;
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
	private List<ClientInfo> list_clients;
	private Client client;
	private FinancialAccount financialAccount;
	private FinancialAccountService financialAccountService;
	private List<ClientFinancialVO> list_client_financial;
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

	public List<ClientInfo> getList_clients() {
		return list_clients;
	}

	public void setList_clients(List<ClientInfo> list_clients) {
		this.list_clients = list_clients;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
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

	public FinancialAccountService getFinancialAccountService() {
		return financialAccountService;
	}

	public void setFinancialAccountService(
			FinancialAccountService financialAccountService) {
		this.financialAccountService = financialAccountService;
	}

	public FinancialAccount getFinancialAccount() {
		return financialAccount;
	}

	public void setFinancialAccount(FinancialAccount financialAccount) {
		this.financialAccount = financialAccount;
	}

	public List<ClientFinancialVO> getList_client_financial() {
		return list_client_financial;
	}

	public void setList_client_financial(
			List<ClientFinancialVO> list_client_financial) {
		this.list_client_financial = list_client_financial;
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
		client.setHobby(hobby);
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp createdate = Timestamp.valueOf(sdf.format(dt));
		client.setCreatedDate(createdate);
		clientService.createClient(client);
		return SUCCESS;
	}

	public String loadclients() throws Exception {

		list_clients = clientService.loadall();
		return "list_client";
	}

	public String loadAClient() throws Exception {
		client = clientService.getClientByNo(client.getIdCardNo());
		return "alterclient";

	}

	public String updateClient() throws Exception {
		clientService.update(client);
		return SUCCESS;
	}

	public String clientdetail() throws Exception {
		client = clientService.getClientByNo(client.getIdCardNo());
		financialAccount = financialAccountService
				.findFinancialAccountById(client.getIdCardNo());
		if (financialAccount.getAccStatus().equals("A")) {
			financialAccount.setAccStatus("正常");  
		}
		else 
		{
			financialAccount.setAccStatus("冻结");  
		}
		
		list_client_financial=clientService.loadclientfinancial(client.getIdCardNo());
		System.out.println(list_client_financial.size());
		return "list_client_financial";

	}
}
