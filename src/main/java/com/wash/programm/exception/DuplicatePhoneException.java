package com.wash.programm.exception;

public class DuplicatePhoneException extends Exception {
	
	private static final long serialVersionUID = -478002120953598310L;

	public DuplicatePhoneException() {
		super();
	}

    public DuplicatePhoneException(String message) {
        super(message);
    }
    
    public DuplicatePhoneException(Throwable t) {
    	super(t);
    }
    
    public DuplicatePhoneException(String message, Throwable t) {
    	super(message, t);
    }
}