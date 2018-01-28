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


    public void changeStatus(int id, int newStatus){
        String sql = "UPDATE parent SET status = ? WHERE ParentID = ?";

        this.jdbcTemplate.update(sql, new Object[] {newStatus, id});   
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

    public int login(String username, String password) {     
        List<String> db_id = jdbcTemplate.queryForList("select ParentID from parent where (Username = ? and Password = ?)", new Object[] {username, password}, String.class); 

        if(db_id.size() == 0){
           return -1;
        }
        
        return Integer.parseInt(db_id.get(0)); 
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

    public int check_email(String email) {        
        List<Parent> parent = jdbcTemplate.query("select * from parent where Email = ?", new Object[] {email}, new ParentRowMapper());
        if (parent.size() == 1)  {
            return 1;
        }
        else {
            return 0;
        }        
    }
    
    public List<Parent> getAll(){
        return jdbcTemplate.query("SELECT * FROM parent",new ParentRowMapper());
    }

   
}