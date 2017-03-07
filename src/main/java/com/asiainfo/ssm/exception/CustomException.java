package com.asiainfo.ssm.exception;

/**
 * Created by Lenovo on 2017/3/7.
 */
public class CustomException extends Exception{
    private String message ;

    public CustomException(String message) {
        super(message);
        this.message = message;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
