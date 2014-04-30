package com.wash.model.account;

public enum Type {
	
	MOBILE("\u041C\u043E\u0431\u0438\u043B\u044C\u043D\u044B\u0439"),
	HOME("\u0414\u043E\u043C\u0430\u0448\u043D\u0438\u0439"),
	WORK("\u0420\u0430\u0431\u043E\u0447\u0438\u0439");
	
	private String value;
	
	private Type(String value) {
		this.value = value;
	}
	
	public String getValue() {
		return value;
	}
}
