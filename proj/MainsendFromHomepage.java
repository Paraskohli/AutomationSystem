package proj;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class MainsendFromHomepage {
	public static MessagingException send(String name,String email,String mob,String messa)
	   {
		MessagingException me=null;
		 
			  System.out.println("check for mail");
			  // Recipient's email ID needs to be mentioned.
		      String to = "automationproject01@gmail.com";

		      // Sender's email ID needs to be mentioned
		      String from = "automationproject01@gmail.com";

		      // Assuming you are sending email from localhost
		      String host = "localhost";
	          String port="587";
		      // Get system properties
		      Properties properties = System.getProperties();

		      properties.put("mail.smtp.host", "smtp.gmail.com");
		      properties.put("mail.smtp.port", port);
		      properties.put("mail.smtp.auth", "true");
		      properties.put("mail.smtp.starttls.enable", "true");
		      // Setup mail server
		      //properties.setProperty("mail.smtp.host", host);

		      // Get the default Session object.
		     // Session session = Session.getDefaultInstance(properties);
		      // creates a new session with an authenticator
		        
		      Authenticator auth = new Authenticator() {
		            public PasswordAuthentication getPasswordAuthentication() {
		                return new PasswordAuthentication("automationproject01@gmail.com", "Automate");
		            }
		        };
		 
		        Session session = Session.getInstance(properties, auth);

		      System.out.println("check for mail");
		      try 
		      {  
		    	 System.out.println("1");
		         // Create a default MimeMessage object.
		         MimeMessage message = new MimeMessage(session);
		         System.out.println("2");
		         // Set From: header field of the header.
		         message.setFrom(new InternetAddress(from));
		         System.out.println("3");
		         // Set To: header field of the header.
		         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		         System.out.println("4");
		         // Set Subject: header field
		         message.setSubject(name+" Suggesion");
		         System.out.println("5");
		         // Now set the actual message
		         
		         
		         
		      /*   final MimeBodyPart textPart = new MimeBodyPart();  <----not need yet
		         textPart.setContent(name, "text/plain"); */
		         // HTML version
		         final MimeBodyPart htmlPart = new MimeBodyPart();
		         htmlPart.setContent("<div style='background-color:#F5770D; margin:33px; margin-left: 30px; border: 10px dotted white; margin-bottom: 40px;margin-top: 35px;'><h1 style='color:red; margin-left: 15px;'>"+name+"</h1>"+"\n"+"<h3 style='margin-left: 15px;'><Span>Email ID:</span>"+email+"</h3>"+"\n"+"<h3 style='margin-left: 15px;'>Mobile No:"+mob+"</h3>"+"\n"+"<h5 style='margin-left: 40px;'>"+" "+messa+"</h5></div>", "text/html");
		         // Create the Multipart.  Add BodyParts to it.
		         final Multipart mp = new MimeMultipart("alternative");
		    //     mp.addBodyPart(textPart);
		         mp.addBodyPart(htmlPart);
		         // Set Multipart as the message's content
		         message.setContent(mp);
		         
		         
		         System.out.println("6");
		         // Send message
		         Transport.send(message);
		         System.out.println("Sent message successfully....");
		      }
		      catch (MessagingException mex)
		      {
		         mex.printStackTrace();
		         me=mex;
		      }
		   return me;
		   
	   }

}
