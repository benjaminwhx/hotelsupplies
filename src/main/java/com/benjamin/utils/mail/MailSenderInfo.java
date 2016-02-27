package com.benjamin.utils.mail;

import com.benjamin.utils.support.PropertiesUtil;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Vector;

/**
 * Created by piqiu on 2/25/16.
 * 发送邮件的信息类
 */
public class MailSenderInfo {

    public final String HOST = "mail.smtp.host";
    public final String PORT = "mail.smtp.port";
    public final String AUTH = "mail.smtp.auth";
    // 发送邮件的服务器的IP和端口
    private String mailServerHost;
    private String mailServerPort = "25";
    // 邮件发送者的地址
    private String fromAddress;
    // 邮件接收者的地址
    private String[] toAddress;
    // 抄送人接收者地址
    private String[] ccAddress;
    // 秘密抄送人接收者地址
    private String[] bccAddress;
    // 登陆邮件发送服务器的用户名和密码
    private String userName;
    private String password;
    // 是否需要身份验证
    private boolean validate = false;
    // 是否是html格式的内容
    private boolean htmlContent = false;
    // 是否包含附件
    private boolean haveAttach = false;
    // 邮件主题
    private String subject;
    // 邮件的文本内容
    private String content;
    // 邮件附件的文件名
    private String fileName = "" ;
    //附件文件集合
    private List<File> file = new ArrayList<>() ;

    /**
     * 从email.properties读取配置初始化邮件列表
     */
    public MailSenderInfo() {
        this.mailServerHost = PropertiesUtil.getString("mail.serverhost");
        this.mailServerPort = PropertiesUtil.getString("mail.serverport");
        this.validate = PropertiesUtil.getBoolean("mail.validate", this.validate);
        this.userName = PropertiesUtil.getString("mail.username");
        this.password = PropertiesUtil.getString("mail.password");
        this.fromAddress = PropertiesUtil.getString("mail.from");
    }

    /**
     * 获得邮件会话属性
     * @return
     */
    public Properties getProperties(){
        Properties p = new Properties();
        p.put(HOST, this.mailServerHost);
        p.put(PORT, this.mailServerPort);
        p.put(AUTH, validate ? "true" : "false");
        return p;
    }

    public String getMailServerHost() {
        return mailServerHost;
    }

    public void setMailServerHost(String mailServerHost) {
        this.mailServerHost = mailServerHost;
    }

    public String getMailServerPort() {
        return mailServerPort;
    }

    public void setMailServerPort(String mailServerPort) {
        this.mailServerPort = mailServerPort;
    }

    public boolean isValidate() {
        return validate;
    }

    public void setValidate(boolean validate) {
        this.validate = validate;
    }

    public String getFromAddress() {
        return fromAddress;
    }

    public void setFromAddress(String fromAddress) {
        this.fromAddress = fromAddress;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String[] getToAddress() {
        return toAddress;
    }

    public void setToAddress(String[] toAddress) {
        this.toAddress = toAddress;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String textContent) {
        this.content = textContent;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public List<File> getFile() {
        return file;
    }

    public void setFile(List<File> file) {
        this.file = file;
    }

    public boolean isHtmlContent() {
        return htmlContent;
    }

    public void setHtmlContent(boolean htmlContent) {
        this.htmlContent = htmlContent;
    }

    public boolean isHaveAttach() {
        return haveAttach;
    }

    public void setHaveAttach(boolean haveAttach) {
        this.haveAttach = haveAttach;
    }

    public String[] getCcAddress() {
        return ccAddress;
    }

    public void setCcAddress(String[] ccAddress) {
        this.ccAddress = ccAddress;
    }

    public String[] getBccAddress() {
        return bccAddress;
    }

    public void setBccAddress(String[] bccAddress) {
        this.bccAddress = bccAddress;
    }
}
