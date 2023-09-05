package com.app.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Card{	
	@Id
	private String emailID;
	private String cardNumber;
	private String cardCode;
	private double cardBalance;
	
	public String getCardNumber() {
		return cardNumber;
	}
	
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	
	public String getCardCode() {
		return cardCode;
	}
	
	public void setCardCode(String cardCode) {
		this.cardCode = cardCode;
	}
	
	public String getEmailID() {
		return emailID;
	}
	
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}

	public double getCardBalance() {
		return cardBalance;
	}
	public void setCardBalance(double cardBalance) {
		this.cardBalance = cardBalance;
	}
	
	@Override
	public String toString() {
		return "Card [cardNumber=" + cardNumber + ", cardCode=" + cardCode + ", emailID=" + emailID + ", cardBalance="
				+ cardBalance + "]";
	}
}