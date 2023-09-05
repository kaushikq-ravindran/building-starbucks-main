package com.app.model;

public class Order {
	private String type;
	private int count;
	private double price;
	
	public String getType() {
		return this.type;
	}	
	public void setType(String type) {
		this.type = type;
	}
	public int getCount() {
		return this.count;
	}	
	public void setCount(int count) {
		this.count = count;
	}
	public double getPrice() {
		return this.price;
	}	
	public void setPrice(double price) {
		this.price = price;
	}
	public String toString() {
		return "Type: " + this.type + "Count: " +this.count+ "Price: " + this.price;
	}
}