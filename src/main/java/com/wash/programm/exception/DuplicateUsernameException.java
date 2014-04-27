package com.wash.programm.exception;

public class DuplicateUsernameException extends Exception {
	
	private static final long serialVersionUID = 4086152728591730107L;

	public DuplicateUsernameException() {
		super();
	}

    public DuplicateUsernameException(String message) {
        super(message);
    }
    
    public DuplicateUsernameException(Throwable t) {
    	super(t);
    }
    
    public DuplicateUsernameException(String message, Throwable t) {
    	super(message, t);
    }
}