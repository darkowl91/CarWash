package com.wash.model.account;

public enum Operator {
	
	MTS("MTS"),
	VELCOME("Velcome"),
	LIFE("Life");
	
	private String value;
	
	private Operator(String value) {
		this.value = value;
	}
	
	public String getValue() {
		return value;
	}
}
