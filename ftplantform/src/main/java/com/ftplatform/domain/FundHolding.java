package com.ftplatform.domain;

/**
 * FundHolding entity. @author MyEclipse Persistence Tools
 */
public class FundHolding extends AbstractFundHolding implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public FundHolding() {
	}

	/** full constructor */
	public FundHolding(Integer accNo, Integer fundNo, Integer amount) {
		super(accNo, fundNo, amount);
	}

}
