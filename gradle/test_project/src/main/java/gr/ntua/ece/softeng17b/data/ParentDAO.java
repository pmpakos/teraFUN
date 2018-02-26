package gr.ntua.ece.softeng17b.data;

import java.sql.PreparedStatement;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.apache.commons.dbcp2.BasicDataSource;

import org.springframework.jdbc.core.JdbcTemplate;


public class ParentDAO{


	private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;


	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public void insert(Parent parent){
        String sql = "INSERT INTO parent (Username, FirstName, LastName,"
                    + "Address, PostalCode, TelephoneNumber, Email, Password,"
                    + "BankAccount, Latitude, Longitude, VerificationCode)"
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        this.jdbcTemplate.update(sql, new Object[] {parent.Username, parent.FirstName, parent.LastName, 
                                        parent.Address, parent.PostalCode, parent.TelephoneNumber,
                                        parent.Email, parent.Password, parent.BankAccount,
                                        parent.Latitude, parent.Longitude, parent.VerificationCode});   
    }

    public void update(Parent parent){
        String sql = "UPDATE parent SET FirstName = ?, LastName = ?,"
                    + "Address = ?, PostalCode = ?, TelephoneNumber = ?, Email = ?, Password = ?,"
                    + "BankAccount = ?, Latitude = ?, Longitude = ?"
                    + "WHERE Username = ?";

        this.jdbcTemplate.update(sql, new Object[] {parent.FirstName, parent.LastName, 
                                        parent.Address, parent.PostalCode, parent.TelephoneNumber,
                                        parent.Email, parent.Password, parent.BankAccount,
                                        parent.Latitude, parent.Longitude, parent.Username});   
    }


    public void changeStatus(int id, int newStatus){
        String sql = "UPDATE parent SET status = ? WHERE ParentID = ?";

        this.jdbcTemplate.update(sql, new Object[] {newStatus, id});   
    }


   public String updatePoints(int id, int points, int status){

        int flag = 0;

        if(status == 1){

            if(points<50){
                return "0";
            }
            else{
                points -= 50;
                flag=1;
            }            

        }
            
        String sql = "UPDATE parent SET points = ?, Status=2 WHERE ParentID = ?";

        List<String> db_points = jdbcTemplate.queryForList("select Points from parent where (ParentID = ?)", new Object[] {id}, String.class); 
        int temp = points + Integer.parseInt(db_points.get(0));
        if(points >= 100) temp = temp + points/10;
        this.jdbcTemplate.update(sql, new Object[] {temp, id});
        if(flag==1)
            return "1"; 

        return "2";// 0 -> Points < 50 && Status = 1 | 1 -> Points > 50 && Status=1 | 2 -> Status=2

    }

    public Optional<Parent> getParent(int id) {        
        List<Parent> parent = jdbcTemplate.query("select * from parent where ParentID = ?", new Object[] {id}, new ParentRowMapper());
        if (parent.size() == 1)  {
            return Optional.of(parent.get(0));
        }
        else {
            return Optional.empty();
        }        
    }

    public Optional<Parent> getHome(int id) {        
        List<Parent> parent = jdbcTemplate.query("select Latitude,Longitude from parent where ParentID = ?", new Object[] {id}, new ParentRowMapper());
        if (parent.size() == 1)  {
            return Optional.of(parent.get(0));
        }
        else {
            return Optional.empty();
        }        
    }


    public String getPassword(String email) {     
        List<String> db_pssw = jdbcTemplate.queryForList("select Password from parent where (Email = ?)", new Object[] {email}, String.class);
        
        System.out.println(db_pssw.get(0)); 
        return db_pssw.get(0);
    }

    public int login(String username, String password) {     
        List<String> db_id = jdbcTemplate.queryForList("select ParentID from parent where (Username = ? and Password = ?)", new Object[] {username, password}, String.class); 

        if(db_id.size() == 0){
           return -1;
        }
        
        return Integer.parseInt(db_id.get(0)); 
    }


    public int validate(String username, String ver_code) {     
        List<String> db_id = jdbcTemplate.queryForList("select ParentID from parent where (Username = ? and VerificationCode = ?)", new Object[] {username, ver_code}, String.class); 

        if(db_id.size() == 0){
           return -1;
        }
        
        return Integer.parseInt(db_id.get(0)); 
    }

    public int checkStatus(int id) {     
        List<String> db_status = jdbcTemplate.queryForList("select Status from parent where (ParentID = ?)", new Object[] {id}, String.class); 

        if(db_status.size() == 0){
           return -1;
        }
        
        return Integer.parseInt(db_status.get(0)); 
    }


    public int check_username(String username) {        
        List<Parent> parent = jdbcTemplate.query("select * from parent where Username = ?", new Object[] {username}, new ParentRowMapper());
        if (parent.size() == 1)  {
            return 1;
        }
        else {
            return 0;
        }        
    }

    public String check_email(String email) {        
        List<Parent> parent = jdbcTemplate.query("select * from parent where Email = ?", new Object[] {email}, new ParentRowMapper());
        if (parent.size() == 1)  {
            return parent.get(0).Username;
        }
        else {
            return "";
        }        
    }
    
    public List<Parent> getAll(){
        return jdbcTemplate.query("SELECT * FROM parent",new ParentRowMapper());
    }

   
}