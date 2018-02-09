package gr.ntua.ece.softeng17b.data;

public class Parent {

	int ParentID;
	String Username;
	String FirstName;
	String LastName;
	String Address;
	int PostalCode;
	long TelephoneNumber;
	String Email;
	String Password;
	int Status;
	int CounterEvents;
	int Points;
	long BankAccount;
	double Latitude;
	double Longitude;
	long VerificationCode;
	
	public Parent(int ID, String Username, String FirstName, String LastName, 
						String Address, int PostalCode, long TelephoneNumber, 
						String Email, String Password, int Status, 
						int CounterEvents, int Points, long BankAccount, 
						double Latitude, double Longitude, long VerificationCode){
		this.ParentID = ID;
		this.Username = Username;
		this.FirstName = FirstName;
		this.LastName = LastName;
		this.Address = Address;
		this.PostalCode = PostalCode;
		this.TelephoneNumber = TelephoneNumber;
		this.Email = Email;
		this.Password = Password;
		this.Status = Status;
		this.CounterEvents = CounterEvents;
		this.Points = Points;
		this.BankAccount = BankAccount;
		this.Latitude = Latitude;
		this.Longitude = Longitude;
		this.VerificationCode = VerificationCode;
	}
	
	public int getParentID(){
		return this.ParentID;
	}
	
	public String getFirstName(){
		return this.FirstName;
	}
	
	public String getLastName(){
		return this.LastName;
	}
	
	public String getEmail(){
		return this.Email;
	}
	
	public String getPassword(){
		return this.Password;
	}

	public double getLatitude(){
		return this.Latitude;
	}

	public double getLongitude(){
		return this.Longitude;
	}
}