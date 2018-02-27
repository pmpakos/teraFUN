package gr.ntua.ece.softeng17b.data;

import java.sql.Date;

public class Booking {

	int BookingID;
	int ParentID;
	int EventID;
	Date BookDate;
	int NumberOfTickets;
	String Code;
	
	public Booking (int ID, int foreignIDparent, int foreignIDevent, Date BookDate, int NumberOfTickets,
			String Code){
		
		this.BookingID = ID;
		this.ParentID = foreignIDparent;
		this.EventID = foreignIDevent;
		this.BookDate = BookDate;
		this.NumberOfTickets = NumberOfTickets;
		this.Code = Code;
		
	}
	
	public int getBookingID(){
		return this.BookingID;
	}
	
	public int getNumberOfTickets(){
		return this.NumberOfTickets;
	}
	
	public String getCode(){
		return this.Code;
	}
	
}