package com.benjamin.exception;

/**
 * Created by piqiu on 2/26/16.
 * 发送邮件没有附件异常
 */
public class SendMailHasNoAttachmentException extends Exception {

    public SendMailHasNoAttachmentException() {
        super();
    }

    public SendMailHasNoAttachmentException(String message) {
        super(message);
    }

    public SendMailHasNoAttachmentException(String message, Throwable cause) {
        super(message, cause);
    }

    public SendMailHasNoAttachmentException(Throwable cause) {
        super(cause);
    }
}
