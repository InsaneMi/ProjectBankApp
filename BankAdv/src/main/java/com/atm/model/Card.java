package com.atm.model;

public class Card {
	private double cardNo;
	private String cardType;
	private int expDate;
	private int cardCvv;
	private Account accid;
	public Account getAccid() {
		return accid;
	}
	public void setAccid(Account accid) {
		this.accid = accid;
	}
	public double getCardNo() {
		return cardNo;
	}
	public void setCardNo(double cardNo) {
		this.cardNo = cardNo;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public int getExpDate() {
		return expDate;
	}
	public void setExpDate(int expDate) {
		this.expDate = expDate;
	}
	public int getCardCvv() {
		return cardCvv;
	}
	public void setCardCvv(int cardCvv) {
		this.cardCvv = cardCvv;
	}
	

}
