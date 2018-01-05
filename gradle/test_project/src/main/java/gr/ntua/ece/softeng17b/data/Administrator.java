package gr.ntua.ece.softeng17b.data;

public class Administrator {

	int AdminID;
	String Username;
	String FirstName;
	String LastName;
	String Email;
	String Password;
	
	public Administrator (int ID, String Username, String FirstName, String LastName, 
							String Email, String Password){
		this.AdminID = ID;
		this.Username = Username;
		this.FirstName = FirstName;
		this.LastName = LastName;
		this.Email = Email;
		this.Password = Password;
		
	}
	
	public int getAdminID(){
		return this.AdminID;
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
}