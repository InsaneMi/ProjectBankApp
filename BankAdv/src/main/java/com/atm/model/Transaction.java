package com.atm.model;

import java.util.Date;

public class Transaction {
	private int transid;
	private Date transdate; 
	private String transtype;
	private double balance;
	private Card card;
	public int getTransid() {
		return transid;
	}
	public void setTransid(int transid) {
		this.transid = transid;
	}
	public Date getTransdate() {
		return transdate;
	}
	public void setTransdate(Date transdate) {
		this.transdate = transdate;
	}
	public String getTranstype() {
		return transtype;
	}
	public void setTranstype(String transtype) {
		this.transtype = transtype;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public Card getCard() {
		return card;
	}
	public void setCard(Card card) {
		this.card = card;
	}

}
