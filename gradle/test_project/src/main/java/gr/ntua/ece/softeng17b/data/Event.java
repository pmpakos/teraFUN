package gr.ntua.ece.softeng17b.data;

import java.sql.Date;

public class Event {

	int EventID;
	int CompanyID;
	String Name;
	String Address;
	Date DateEvent;
	String Hour;
	int Duration;
	int TicketCounter;
	int IncomingCash;
	int Cost;
	String Description;
	String PhotosFolder;
	int IsOffer;
	int Visits;
	double Latitude;
	double Longitude;
	int MaxCapacity;
	int Indoor;
	int MinAge;
	int MaxAge;
	int Fun;
	int Sport;
	int Education;
	int Team;
	String TagDescription;
	
		
	public Event( int ID, int CompanyID, String Name, String Address, Date DateEvent,
			String Hour, int Duration, int TicketCounter, int IncomingCash, int Cost, String Description, 
			String PhotosFolder, int IsOffer, int Visits, double Latitude, double Longitude,
			int MaxCapacity, int Indoor, int MinAge, int MaxAge, int Fun, int Sport, 
			int Education, int Team, String TagDescription){
		
		this.EventID = ID;
		this.CompanyID = CompanyID;
		this.Name = Name;
		this.Address = Address;
		this.DateEvent = DateEvent;
		this.Hour = Hour;
		this.Duration = Duration;
		this.TicketCounter = TicketCounter;
		this.IncomingCash = IncomingCash;
		this.Cost = Cost;
		this.Description = Description;
		this.PhotosFolder = PhotosFolder;
		this.IsOffer = IsOffer;
		this.Visits = Visits;
		this.Latitude = Latitude;
		this.Longitude = Longitude;
		this.MaxCapacity = MaxCapacity;
		this.Indoor = Indoor;
		this.MinAge = MinAge;
		this.MaxAge = MaxAge;
		this.Fun = Fun;
		this.Sport = Sport;
		this.Education = Education;
		this.Team = Team;
		this.TagDescription = TagDescription;
	}

	public Event(double Latitude, double Longitude){
		this.EventID = -1;
		this.Name = "";
		this.Latitude = Latitude;
		this.Longitude = Longitude;
	}
	
	public int getEventID(){
		return this.EventID;
	}
	
	public int getCompanyID(){
		return this.CompanyID;
	}
	
	public String getName(){
		return this.Name;
	}
	public int getCost(){
		return this.Cost;
	}
	public int getTicketCounter(){
		return this.TicketCounter;
	}

	public int getMaxCapacity(){
		return this.MaxCapacity;
	}

	public String getTagDescription(){
		return this.TagDescription;
	}

	public void setTagDescription(String auto){
		this.TagDescription = auto;
	}

}