package com.benjamin.utils.mail;

import com.benjamin.utils.JudgeNullUtils;
import com.benjamin.exception.SendMailHasNoAttachmentException;
import com.benjamin.exception.SendMailHasNoReceiverException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.io.File;
import java.util.*;

/**
 * Created by piqiu on 2/26/16.
 * 发送邮件工具类
 */
public class SimpleMailSender {

    private static final Logger logger = LoggerFactory.getLogger("SimpleMailSender");

    /**
     * 最简单的纯文本邮件发送
     * @param mailToAddress 收件人
     * @param subject   主题
     * @param content   内容
     * @return
     */
    public static boolean sendMail(String mailToAddress, String subject, String content) {
        return sendMail(new String[]{mailToAddress}, subject, false, content);
    }

    public static boolean sendMail(String mailToAddress, String subject, String content, List<File> attachment) {
        return sendMail(new String[]{mailToAddress}, subject, false, content, attachment);
    }

    public static boolean sendMail(String mailToAddress, String subject, boolean isHtml, String content) {
        return sendMail(new String[]{mailToAddress}, subject, isHtml, content);
    }

    public static boolean sendMail(String[] mailToAddress, String subject, boolean isHtml, String content) {
        return sendMail(mailToAddress, null, subject, isHtml, content);
    }

    public static boolean sendMail(String[] mailToAddress, String subject, boolean isHtml, String content, List<File> attachment) {
        return sendMail(mailToAddress, null, subject, isHtml, content, attachment);
    }

    public static boolean sendMail(String[] mailToAddress, String[] mailCCAddress, String subject, boolean isHtml, String content) {
        return sendMail(mailToAddress, mailCCAddress, null, subject, isHtml, content);
    }

    public static boolean sendMail(String[] mailToAddress, String[] mailCCAddress, String subject, boolean isHtml, String content, List<File> attachment) {
        return sendMail(mailToAddress, mailCCAddress, null, subject, isHtml, content, attachment);
    }

    public static boolean sendMail(String[] mailToAddress, String[] mailCCAddress, String[] mailBCCAddress, String subject, boolean isHtml, String content) {
        return sendMail(mailToAddress, mailCCAddress, mailBCCAddress, subject, isHtml, content, null);
    }

    public static boolean sendMail(String[] mailToAddress, String[] mailCCAddress, String[] mailBCCAddress,
                             String subject, boolean isHtml, String content, List<File> attachment) {
        MailSenderInfo mailSenderInfo = new MailSenderInfo();
        mailSenderInfo.setToAddress(mailToAddress);
        mailSenderInfo.setCcAddress(mailCCAddress);
        mailSenderInfo.setBccAddress(mailBCCAddress);
        mailSenderInfo.setSubject(subject);
        mailSenderInfo.setHtmlContent(isHtml);
        mailSenderInfo.setContent(content);
        if (attachment != null && attachment.size() > 0) {
            mailSenderInfo.setHaveAttach(true);
        } else {
            mailSenderInfo.setHaveAttach(false);
        }
        mailSenderInfo.setFile(attachment);
        return sendMailCore(mailSenderInfo);
    }

    private static boolean sendMailCore(MailSenderInfo mailInfo) {
        // 判断是否需要身份认证
        MyAuthenticator authenticator = null;
        Properties pro = mailInfo.getProperties();
        //如果需要身份认证，则创建一个密码验证器
        if (mailInfo.isValidate()) {
            authenticator = new MyAuthenticator(mailInfo.getUserName(), mailInfo.getPassword());
        }
        // 根据邮件会话属性和密码验证器构造一个发送邮件的session
        Session sendMailSession = Session.getDefaultInstance(pro,authenticator);
        Message mailMessage = null;
        try {
            mailMessage = new MimeMessage(sendMailSession); // 根据session创建一个邮件消息
            Address from = new InternetAddress(mailInfo.getFromAddress());  // 创建邮件发送者地址
            mailMessage.setFrom(from);
            String[] toAddress = mailInfo.getToAddress();   // 创建邮件的接收者地址，并设置到邮件消息中
            if (toAddress != null && toAddress.length > 0) {
                int toAddressSize = toAddress.length;
                Address to[] = new InternetAddress[toAddressSize];
                for (int i = 0; i < toAddressSize; ++i) {
                    to[i] = new InternetAddress(toAddress[i]);
                }
                // Message.RecipientType.TO属性表示接收者的类型为TO
                //TO表示主要接收人，CC表示抄送人，BCC表示秘密抄送人。
                mailMessage.setRecipients(Message.RecipientType.TO,to);
            } else {
                throw new SendMailHasNoReceiverException("必须指明一个接收者!");
            }

            String[] ccAddress = mailInfo.getCcAddress();
            if (ccAddress != null && ccAddress.length > 0) {
                int ccAddressSize = ccAddress.length;
                Address cc[] = new InternetAddress[ccAddressSize];
                for (int i = 0; i < ccAddressSize; ++i) {
                    cc[i] = new InternetAddress(ccAddress[i]);
                }
                mailMessage.setRecipients(Message.RecipientType.CC,cc);
            }

            String[] bccAddress = mailInfo.getBccAddress();
            if (bccAddress != null && bccAddress.length > 0) {
                int bccAddressSize = bccAddress.length;
                Address bcc[] = new InternetAddress[bccAddressSize];
                for (int i = 0; i < bccAddressSize; ++i) {
                    bcc[i] = new InternetAddress(bccAddress[i]);
                }
                mailMessage.setRecipients(Message.RecipientType.BCC,bcc);
            }

            mailMessage.setSubject(mailInfo.getSubject());  // 设置邮件消息的主题
            mailMessage.setSentDate(new Date());    // 设置邮件消息发送的时间

            if (mailInfo.isHaveAttach()) {
                Multipart mainPart = new MimeMultipart();
                BodyPart content = new MimeBodyPart();
                if (mailInfo.isHtmlContent()) {
                    content.setContent(mailInfo.getContent(), "text/html; charset=utf-8");
                } else {
                    content.setContent(mailInfo.getContent(), "text/plain; charset=utf-8");
                }
                mainPart.addBodyPart(content);  // 增加内容
                List<File> file = mailInfo.getFile();
                String fileName = mailInfo.getFileName();
                if (JudgeNullUtils.isCollectionEmpty(file)) {
                    throw new SendMailHasNoAttachmentException("you must have a attachment");
                }
                for (File f : file) {
                    MimeBodyPart mdpFile = new MimeBodyPart() ;
                    fileName = f.toString();
                    FileDataSource fds = new FileDataSource(fileName) ;
                    mdpFile.setDataHandler(new DataHandler(fds)) ;
                    String fileName1 = new String(fds.getName().getBytes(),"ISO-8859-1") ;
                    mdpFile.setFileName(fileName1) ;
                    mainPart.addBodyPart(mdpFile) ;
                }
                file.clear();
                mailMessage.setContent(mainPart);
            } else {
                if (mailInfo.isHtmlContent()) {
                    mailMessage.setContent(mailInfo.getContent(), "text/html; charset=utf-8");
                } else {
                    mailMessage.setContent(mailInfo.getContent(), "text/plain; charset=utf-8");
                }
            }
            Transport.send(mailMessage);    // 发送邮件
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage(), e);
            return false;
        }
    }

    public static void main(String[] args) {
        String[] mailToAddress = {"benjamin.wu@leandev.se"};
        String[] mailCCAddress = {"benjaminwhx@sina.com"};
        String subject = "测试2";
        String content = "注册地址 <a href=\\\"www.baidu.com\\\" target='_blank'>百度</a>";
        List<File> file = new ArrayList<>();
        File f1 = new File("/Users/piqiu1/Desktop/0039.txt");
        file.add(f1);
        boolean sendResult = SimpleMailSender.sendMail(mailToAddress, mailCCAddress, subject, true, content, file);
        if (sendResult) {
            System.out.println("mail send successful");
            logger.info("mail send successful");
        } else {
            System.out.println("mail send failed");
            logger.info("mail send failed");
        }
    }
}
