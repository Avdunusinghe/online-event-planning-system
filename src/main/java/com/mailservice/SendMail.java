package com.mailservice;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/*
 * Author Ashen Dunusinghe IT20025526
 */

public class SendMail {
	
	private static String host = "smtp.gmail.com";
	private static int port = 587;
	private static String systemEmail = "theeventprojectg259@gmail.com";
	private static String password = "1qaz2wsx@";
	
	public static void sendMailRegisteredCustomer(String toEmailAddress, String subject, String messeage) {
		
		 try {
			  
			//set SMTP server Configuration
				
			  Properties prop = new Properties();
			  prop.put("mail.smtp.host", host);
			  prop.put("mail.stmp.port", port);
			  prop.put("mail.smtp.auth", "true");
			  prop.put("mail.smtp.starttls.enable", "true");
			  
			  /*
			   * Create new session with an authenticator class get network connection
			   */
			  
			  Authenticator auth = new Authenticator() {
				  
				  public PasswordAuthentication getPasswordAuthentication() {
					  
					  return new PasswordAuthentication(systemEmail,password);
				  }
			  };
			
			Session session = Session.getInstance(prop, auth);
			
			/*
			 * create a new Email message
			 */
			
			Message regMessage = new MimeMessage(session);
			
			regMessage.setFrom(new InternetAddress(systemEmail));
			InternetAddress[] toAddresses = { new InternetAddress(toEmailAddress)};
			regMessage.setRecipients(Message.RecipientType.TO, toAddresses);
			regMessage.setSubject(subject);
			regMessage.setSentDate(new Date());
			
			/*
			 * set text message 
			 */
			regMessage.setContent(messeage,"text/html");
			
			/*
			 * Send the email via SMTP
			 */
			
			Transport.send(regMessage);
			
		 }catch(Exception ex) {
			 
			 ex.printStackTrace();
		 }
			
	}

}
