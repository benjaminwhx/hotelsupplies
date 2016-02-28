package com.benjamin.exception;

/**
 * Created by piqiu on 2/26/16.
 * 发送邮件没有指明接收者异常
 */
public class SendMailHasNoReceiverException extends Exception {

    public SendMailHasNoReceiverException() {
        super();
    }

    public SendMailHasNoReceiverException(String message) {
        super(message);
    }

    public SendMailHasNoReceiverException(String message, Throwable cause) {
        super(message, cause);
    }

    public SendMailHasNoReceiverException(Throwable cause) {
        super(cause);
    }
}
