package gr.ntua.ece.softeng17b.data;

public class AdminProfile {

	int AdminProfileID;
	int TotalAmount;
	String Email;
	String NameofTeraFun;
	String Address;
	int PostalCode;
	long TelephoneNumber;
	String Description;
	long BankAccount;
	
	public AdminProfile (int ID, int TotalAmount, String Email, String NameofTeraFun, String Address, 
			int PostalCode, long TelephoneNumber, String Description, long BankAccount){
		this.AdminProfileID = ID;
		this.TotalAmount = TotalAmount;
		this.Email = Email;
		this.NameofTeraFun = NameofTeraFun;
		this.Address = Address;
		this.PostalCode = PostalCode;
		this.TelephoneNumber = TelephoneNumber;
		this.Description = Description;
		this.BankAccount= BankAccount;
		
	}
	
	public int getAdminProfileID(){
		return this.AdminProfileID;
	}
	

	
	public String getEmail(){
		return this.Email;
	}
	
	public int getAmount(){
		return this.TotalAmount;
	}
}