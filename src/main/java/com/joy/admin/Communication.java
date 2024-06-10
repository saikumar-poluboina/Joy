package com.joy.admin;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

;
public class Communication {
    public static void main(String [] s){
        sendEmail();
    }

    public static String sendEmail(){


        String senderEmail = "sudeep000308@gmail.com";
        String senderPassword = "eksxokzokcaragsa";

        // Recipient's email address
        String recipientEmail = "saikumar.p.724@gmail.com";

        // Setup properties for the mail server
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        // Create a session with the properties
        javax.mail.Session session = Session.getInstance(properties,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(senderEmail, senderPassword);
                    }
                });

        try {
            // Create a MimeMessage object
            Message message = new MimeMessage(session);

            // Set sender and recipient addresses
            message.setFrom(new InternetAddress(senderEmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));

            // Set email subject and content
            message.setSubject("JavaMail Test");
            message.setText("This is a test email sent from Java!");

            // Send the message
            Transport.send(message);

            System.out.println("Email sent successfully!");

        } catch (MessagingException e) {
            System.out.println(e);
        }


        return "1";
    }


}
