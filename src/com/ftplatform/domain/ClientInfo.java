package com.ftplatform.domain;

public class ClientInfo extends AbstractClientInfo implements
		java.io.Serializable {

	public ClientInfo() {

	}

	public ClientInfo(String idCardNo, String clientName, Double accAmount,
			Double accTotalAmount) {
		super(idCardNo, clientName, accAmount, accTotalAmount);
	}
}
