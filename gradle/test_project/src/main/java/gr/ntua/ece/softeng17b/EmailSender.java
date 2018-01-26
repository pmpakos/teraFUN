package gr.ntua.ece.softeng17b;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;
import com.itextpdf.text.Document;
import com.itextpdf.text.Chunk;

import com.itextpdf.text.Font;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.FontFactory; 
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.DocumentException;

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
	
	public static void ticketattachment (String Recipient, String TicketCode, String EventName){
        ByteArrayOutputStream outputStream = null;
        try {           
			Session session = basics();
            
            //construct the text body part
            MimeBodyPart textBodyPart = new MimeBodyPart();
            textBodyPart.setContent(
				"<h2>Ευχαριστούμε που χρησιμοποιήσατε την TeraFUN για την κράτησή σας!</h2>"+
				"<br>"+"Το εισιτήριο σας για το event "+
				"<br>"+"<h3>"+EventName+"</h3>"+
				" είναι ο κωδικός : "+
				"<br>"+"<h3>"+TicketCode+"</h3>"+
				"<br><br>"+"Επιδεικνύοντας αυτό θα έχετε πρόσβαση στο συγκεκριμένο event!"+
				"<br><br><br>"+"Ευχαριστούμε πολυ!"+
				"<br>"+"TeraFUN!","text/html; charset=UTF-8");

            //now write the PDF content to the output stream
            outputStream = new ByteArrayOutputStream();
            Document document = new Document();
	        PdfWriter writer;
		    try{
			    writer = PdfWriter.getInstance(document, outputStream);
		    }catch (DocumentException e) {
				throw new RuntimeException(e);
			}

	        if (!document.isOpen()) {
	            document.open();
	        }
	        document.addTitle("TeraFUN Reservation");
	        document.addSubject("TeraFUN Reservation");
	        document.addKeywords("iText, email");
	        document.addAuthor("TeraFUN");
	        document.addCreator("TeraFUN");
	        Paragraph paragraph = new Paragraph();
	        
	        //////
			Font courier1 = new Font(FontFamily.UNDEFINED, 16f, Font.BOLD);
			Font courier2 = new Font(FontFamily.UNDEFINED, 12f);

			Chunk c0 = new Chunk("\n\nΕυχαριστούμε που χρησιμοποιήσατε την TeraFUN για την κράτησή σας!\n\n", courier1);
			Chunk c1 = new Chunk("Το εισιτήριο σας για το event:\n\n\n", courier2);
			Chunk c2 = new Chunk(EventName, courier1);
			Chunk c3 = new Chunk("\n\n\nείναι ο κωδικός :\n\n\n", courier2);
			Chunk c4 = new Chunk(TicketCode, courier1);
			Chunk c5 = new Chunk("\n\n\nΕπιδεικνύοντας αυτό θα έχετε πρόσβαση στο συγκεκριμένο event!\n\n", courier2);
			Chunk c6 = new Chunk("Ευχαριστούμε πολυ!\nTeraFUN!", courier2);
			paragraph.add(c0);
			paragraph.add(c1);
			paragraph.add(c2);
			paragraph.add(c3);
			paragraph.add(c4);
			paragraph.add(c5);
			paragraph.add(c6);

			
			//////
	        try{
		        document.add(paragraph);
	        	
		    }catch (DocumentException e) {
				throw new RuntimeException(e);
			}
 	        document.close();

            byte[] bytes = outputStream.toByteArray();
             
            //construct the pdf body part
            DataSource dataSource = new ByteArrayDataSource(bytes, "application/pdf");
            MimeBodyPart pdfBodyPart = new MimeBodyPart();
            pdfBodyPart.setDataHandler(new DataHandler(dataSource));
            pdfBodyPart.setFileName("Reservation_"+TicketCode+".pdf");
                         
            //construct the mime multi part
            MimeMultipart mimeMultipart = new MimeMultipart();
            mimeMultipart.addBodyPart(textBodyPart);
            mimeMultipart.addBodyPart(pdfBodyPart);
             
            //construct the mime message
            MimeMessage message = new MimeMessage(session);
            
			message.setFrom(new InternetAddress("terafun@outlook.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(Recipient));
			message.setSubject("TeraFUN Reservation");
			message.setContent(mimeMultipart);
             
            //send off the email
            Transport.send(message);
            System.out.println("Done");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
        } finally {
            //clean off
            if(null != outputStream) {
                try { outputStream.close(); outputStream = null; }
                catch(Exception ex) { }
            }
        }
	}
}
