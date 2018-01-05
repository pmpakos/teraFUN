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
        
    }


    public List<Parent> getAll(){
        return jdbcTemplate.query("SELECT * FROM parent",new ParentRowMapper());
    }

    public Boolean login(String Username, String Password){
        
        String sql = "SELECT * "
                + "FROM parent WHERE ( (parent.Username = ?) && (parent.Password = ? ) )";

        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, Username);
            ps.setString(2, Password);
            ResultSet rs = ps.executeQuery();
            int flag = 0;
            if ( rs.next() ) {
                flag = 1;
            }
            rs.close();
            ps.close();
            if (flag==1)
                return true;
            return false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                conn.close();
                } catch (SQLException e) {}
            }
        }
    }
    
    public Parent Details(String Username, String Password){
        
        String sql = "SELECT * "
                + "FROM parent WHERE ( (parent.Username="+ Username +") && (parent.Password =" + Password +"))";

        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            Parent user = null;
            ResultSet rs = ps.executeQuery();
            int flag = 0;
            if ( rs.next() ) {
                user = new Parent(
                    rs.getInt("ParentID"), rs.getString("Username"),
                    rs.getString("FirstName"),
                    rs.getString("LastName"),
                    rs.getString("Address"),rs.getInt("PostalCode"),rs.getLong("TelephoneNumber"),
                    rs.getString("Email"),rs.getString("Password"),rs.getInt("Status"),rs.getInt("CounterEvents"),
                    rs.getInt("Points"), rs.getLong("BankAccount"), rs.getDouble("Latitude"), 
                    rs.getDouble("Longitude")
                );
                flag = 1;
            }
            rs.close();
            ps.close();
            if (flag==1)
                return user;
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                conn.close();
                } catch (SQLException e) {}
            }
        }
    }
    
    public ArrayList<Parent> getAllParents(){

        ArrayList<Parent> Rep = new ArrayList<Parent>();
        
        String sql = "SELECT parent.ParentID, parent.FirstName, parent.LastName FROM parent";

        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            Parent user = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("Hi");
                user = new Parent(
                    rs.getInt("ParentID"), "",
                    rs.getString("FirstName"),
                    rs.getString("LastName"),
                    "",0,0,"","",0,0,0,0,0.0,0.0
                );
                Rep.add(user);
                
            }
            rs.close();
            ps.close();
            return Rep;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                conn.close();
                } catch (SQLException e) {}
            }
        }
    }
}