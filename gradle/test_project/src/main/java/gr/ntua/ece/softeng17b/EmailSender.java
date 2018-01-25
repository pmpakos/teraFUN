package gr.ntua.ece.softeng17b;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import gr.ntua.ece.softeng17b.data.*;

public class EmailSender{
	private Properties emailPorperties;

	// connects to outlook account, begins session before creating new email
	public static Session basics(){
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp-mail.outlook.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.starttls.enable","true");
		props.put("mail.smtp.auth", "true"); 

		Session session = Session.getDefaultInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("terafun@outlook.com","outlook.com");
				}
			});
		return session;
	}

	public static void verifmail (String Recipient,String firstname,String lastname,String username,String address,int postal,long bank,long tel,long vcode){
		System.out.println(Recipient);
		try {
			Session session = basics();
			Message message = new MimeMessage(session);
			
			message.setFrom(new InternetAddress("terafun@outlook.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(Recipient));
			message.setSubject("Κωδικός Επιβεβαίωσης Εγγραφής στην TeraFUN!");
			message.setContent(
				"<h1>Καλώς ήρθατε στην TeraFUN!</h1>"+
				"<br>"+"Έγινε προσπάθεια για εγγραφή στην υπηρεσία μας μέσω του συγκεκριμένου email, με τα εξής στοιχεία:"+
				"<br>"+"<b>Όνομα </b>: "+firstname+
				"<br>"+"<b>Επώνυμο</b>: "+lastname+
				"<br>"+"<b>username </b>: "+username+
				"<br>"+"<b>Διεύθυνση  </b>: "+address+
				"<br>"+"<b>T.K. </b>: "+postal+
				"<br>"+"<b>Τραπεζικός Λογαριασμός </b>: "+bank+
				"<br>"+"<b>Τηλέφωνο Επικοινωνίας </b>: "+tel+
				"<br><br>"+"Παρακαλούμε επιβεβαιώστε ότι εσείς κάνατε την εγγραφή, χρησιμοποιώντας τον ακόλουθο κωδικο επιβεβαιωσης: "+
				"<br><br>"+"<h2>"+vcode+"</h2>"+
				"<a href='https://github.com/pmpakos/teraFUN/'>εδώ</a>"+
				"<br><br><br>"+"Ευχαριστούμε πολυ!"+
				"<br>"+"TeraFUN!","text/html; charset=UTF-8");
			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}

	}
}
