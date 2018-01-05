package gr.ntua.ece.softeng17b.data;

public class Company {

	int CompanyID;
	String Username;
	String CompanyName;
	String Address;
	int PostalCode;
	long TelephoneNumber;
	String Email;
	int AFM;
	String Password;
	long BankAccount;
	String Description;
	int Status;
	int Points;
	double Latitude;
	double Longitude;

	
	public Company (int ID, String Username, String CompanyName, String Address,
	int PostalCode,	long TelephoneNumber, String Email, int AFM, String Password,
	long BankAccount, String Description, int Status, int Points,
	double Latitude, double Longitude){
		
		this.CompanyID = ID;
		this.Username = Username;
		this.CompanyName = CompanyName;
		this.Address = Address;
		this.PostalCode = PostalCode;
		this.TelephoneNumber = TelephoneNumber;
		this.Email = Email;
		this.AFM = AFM;
		this.Password = Password;
		this.BankAccount = BankAccount;
		this.Description = Description;
		this.Status = Status;
		this.Points = Points;
		this.Latitude = Latitude;
		this.Longitude = Longitude;
	}
	
	public int getCompanyID(){
		return this.CompanyID;
	}
	
	public String getCompanyName(){
		return this.CompanyName;
	}
	
	
	public String getEmail(){
		return this.Email;
	}
	
	public String getPassword(){
		return this.Password;
	}
}