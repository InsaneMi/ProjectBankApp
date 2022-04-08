package com.atm.model;

public class ShowAll {
	private String name;
	private int accNo;
	private double balance;
	private double cardNo;
	private int expDate;
	
	public ShowAll(String name, int accNo, double balance, double cardNo, int expDate) {
		super();
		this.name = name;
		this.accNo = accNo;
		this.balance = balance;
		this.cardNo = cardNo;
		this.expDate = expDate;	
	}
	public ShowAll(String name) {
		super();
		this.name = name;
	}
	public ShowAll(String name, int accNo, double balance) {
		super();
		this.name = name;
		this.accNo = accNo;
		this.balance = balance;
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAccNo() {
		return accNo;
	}
	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public double getCardNo() {
		return cardNo;
	}
	public void setCardNo(double cardNo) {
		this.cardNo = cardNo;
	}
	public int getExpDate() {
		return expDate;
	}
	public void setExpDate(int expDate) {
		this.expDate = expDate;
	}

}
