package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;

@Controller
@RequestMapping("/youxiang")
public class YouxiangController {
    //发件人地址
    public static String senderAddress = "2842611637@qq.com";
    //收件人地址，从前台得到
    public static String recipientAddress = null;
    //发件人账户名，与账户密码一一对应
    public static String senderAccount = "2842611637";
    //发件人账户密码,要在邮箱中得到授权码，作为账户密码
    public static String senderPassword = "xfahbflmpkzxdffi";
    public static Long mm;//输给用户的qq邮箱验证码

    @ResponseBody
    @RequestMapping("/you")
    public void youxiang(@RequestParam("name") String qqhao){
        recipientAddress=qqhao+"@qq.com";
        System.out.println(recipientAddress);
        //1、连接邮件服务器的参数配置
        Properties props = new Properties();
        //设置用户的认证方式
        props.setProperty("mail.smtp.auth", "true");
        //设置传输协议
        props.setProperty("mail.transport.protocol", "smtp");
        //设置发件人的SMTP服务器地址
        props.setProperty("mail.smtp.host", "smtp.qq.com");
        //2、创建定义整个应用程序所需的环境信息的 Session 对象
        Session session = Session.getInstance(props);
        //设置调试信息在控制台打印出来
        session.setDebug(true);
        //3、创建邮件的实例对象
        try {
            Message msg = getMimeMessage(session);
            //4、根据session对象获取邮件传输对象Transport
            Transport transport = session.getTransport();
            //设置发件人的账户名和密码
            transport.connect(senderAccount, senderPassword);
            //发送邮件，并发送到所有收件人地址，message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
            transport.sendMessage(msg,msg.getAllRecipients());

            //如果只想发送给指定的人，可以如下写法
            //transport.sendMessage(msg, new Address[]{new InternetAddress("xxx@qq.com")});

            //5、关闭邮件连接
            transport.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
//    public static void main(String[] args) throws Exception {
//        //1、连接邮件服务器的参数配置
//        Properties props = new Properties();
//        //设置用户的认证方式
//        props.setProperty("mail.smtp.auth", "true");
//        //设置传输协议
//        props.setProperty("mail.transport.protocol", "smtp");
//        //设置发件人的SMTP服务器地址
//        props.setProperty("mail.smtp.host", "smtp.qq.com");
//        //2、创建定义整个应用程序所需的环境信息的 Session 对象
//        Session session = Session.getInstance(props);
//        //设置调试信息在控制台打印出来
//        session.setDebug(true);
//        //3、创建邮件的实例对象
//        Message msg = getMimeMessage(session);
//        //4、根据session对象获取邮件传输对象Transport
//        Transport transport = session.getTransport();
//        //设置发件人的账户名和密码
//        transport.connect(senderAccount, senderPassword);
//        //发送邮件，并发送到所有收件人地址，message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
//        transport.sendMessage(msg,msg.getAllRecipients());
//
//        //如果只想发送给指定的人，可以如下写法
//        //transport.sendMessage(msg, new Address[]{new InternetAddress("xxx@qq.com")});
//
//        //5、关闭邮件连接
//        transport.close();
//    }
    public static MimeMessage getMimeMessage(Session session) throws Exception{
        //创建一封邮件的实例对象
        MimeMessage msg = new MimeMessage(session);
        //设置发件人地址
        msg.setFrom(new InternetAddress(senderAddress));
        msg.setRecipient(MimeMessage.RecipientType.TO,new InternetAddress(recipientAddress));
        //设置邮件主题
        msg.setSubject("请接收您的邮件","UTF-8");
        //设置邮件正文
        msg.setContent(randomNum(6)+"", "text/html;charset=UTF-8");
        //设置邮件的发送时间,默认立即发送
        msg.setSentDate(new Date());

        return msg;
    }
    public static Long randomNum(int factor){  //产生随机数，当做正文
         mm= new Double((Math.random() + 1) * Math.pow(10, factor - 1)).longValue();
//         cunRuSession(HttpSession);
         return mm ;
    }
//    public static void cunRuSession(HttpSession session){
//          session.setAttribute("suijishu",mm);
////        request.getSession().setAttribute("suijishu",mm);
//    }

    @ResponseBody
    @RequestMapping(value = "/yanzhengma")
    public void yanzhengma(@RequestParam("yanzhengma") Long yanzhengma, HttpSession session, HttpServletResponse response){
        System.out.println(yanzhengma);
        System.out.println(mm);
        if (yanzhengma.equals(mm)){  //mm定义的是static类型，所以就不用放到session里面就能得到
            try{
                response.getWriter().print(1);//1表示准确
            }catch (IOException e){
                e.printStackTrace();
            }
        }else {
            try{
                response.getWriter().print(0);//0表示不准确
            }catch (IOException e){
                e.printStackTrace();
            }
        }
    }
}

