package com.atm.model;

public class Customer {
	private int cusid;
	private String cusName;
	private int cusPhone;
	private String cusAddress;
	private Branch branchid;
	public Branch getBrname() {
		return branchid;
	}
	public void setBrname(Branch brname) {
		this.branchid = brname;
	}
	public int getCusid() {
		return cusid;
	}
	public void setCusid(int cusid) {
		this.cusid = cusid;
	}
	public String getCusName() {
		return cusName;
	}
	public void setCusName(String cusName) {
		this.cusName = cusName;
	}
	public int getCusPhone() {
		return cusPhone;
	}
	public void setCusPhone(int cusPhone) {
		this.cusPhone = cusPhone;
	}
	public String getCusAddress() {
		return cusAddress;
	}
	public void setCusAddress(String cusAddress) {
		this.cusAddress = cusAddress;
	}
	

}
