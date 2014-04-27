package com.wash.programm.exception;

public class DuplicateEmailException extends Exception {
	
	private static final long serialVersionUID = 4086152728591730107L;

	public DuplicateEmailException() {
		super();
	}

    public DuplicateEmailException(String message) {
        super(message);
    }
    
    public DuplicateEmailException(Throwable t) {
    	super(t);
    }
    
    public DuplicateEmailException(String message, Throwable t) {
    	super(message, t);
    }
}