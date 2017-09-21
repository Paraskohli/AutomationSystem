package proj;


import java.io.PrintWriter;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.http.HttpServletResponse;
import javax.activation.*;





public class MailSend 
{
   public static MessagingException send(String mail,String cid,java.sql.Date sqlwallidate,String feedback,String charges,String warr,String eid,int complaintno)
   {
	   MessagingException expp=null;
		  System.out.println("check for mail");
		// Recipient's email ID needs to be mentioned.
	      String to = mail;

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
	         message.setSubject("Service Message");
	         System.out.println("5");
	         // Now set the actual message
	         message.setContent("<div style='background-color:#F5770D; margin:33px; margin-left: 30px; border: 10px dotted white; margin-bottom: 40px;margin-top: 35px;'><center><h1 style='font-size:35px;'>Automation System</h1></center><h1 style='color:red; margin-left: 15px;'>Customer ID:"+cid+"</h1>"+"\n"+"<h1 style='margin-left: 15px;'>Complaint Code:"+complaintno+"</h1>"+"\n"+"<h3 style='margin-left: 15px;'><Span>Task Completed:</span>"+sqlwallidate+"</h3>"+"\n"+"<h3 style='margin-left: 15px;'>Employee Feedback about your working:"+feedback+"</h3>"+"\n"+"<h3 style='margin-left: 15px;'>Charges:"+charges+"</h3>"+"\n"+"<h3 style='margin-left: 15px;'>Warranty:"+warr+"</h3>"+"\n"+"<h3 style=' margin-left: 15px;'>Employee ID:"+eid+"</h3>"+"\n"+"<h5 style='margin-left: 40px;'>"+" Please check all the data and give your feedback about this,link is below click on it and move into feedback page.We would love to hear your thoughts, concerns or problems with anything so we can improve!  </h5><center><a href='http://localhost:13249/new_proj/Customerfeedbackform.jsp' style='font-size:28px;'>Feedback Link</a></center"+"</div>", "text/html");
	        		
	         System.out.println("6");
	         // Send message
	         Transport.send(message);
	         System.out.println("Sent message successfully....");
	      }
	      catch (MessagingException mex)
	      {
	         mex.printStackTrace();
	         expp=mex;
	      }
	   
	   return expp;
   }
	
}

