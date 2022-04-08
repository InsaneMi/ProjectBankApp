package com.atm.model;

public class Account {
	private int accNo;
	private String accType;
	private double balance;
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public Customer getCusid() {
		return cusid;
	}
	public void setCusid(Customer cusid) {
		this.cusid = cusid;
	}
	private Customer cusid;
	public int getAccNo() {
		return accNo;
	}
	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}
	public String getAccType() {
		return accType;
	}
	public void setAccType(String accType) {
		this.accType = accType;
	}
	

}
