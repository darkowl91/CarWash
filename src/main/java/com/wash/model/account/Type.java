package com.wash.model.account;

public enum Type {
	
	MOBILE("���������"),
	HOME("��������"),
	WORK("�������");
	
	private String value;
	
	private Type(String value) {
		this.value = value;
	}
	
	public String getValue() {
		return value;
	}
}
