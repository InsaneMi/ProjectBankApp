package com.atm.model;

public class DropBank {
	private int bankId;
	private String bankName;
	
	public DropBank(int bankid, String bankname) {
		super();
		this.bankId = bankid;
		this.bankName = bankname;
	}
	public int getBankId() {
		return bankId;
	}
	public void setBankId(int bankId) {
		this.bankId = bankId;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

}
