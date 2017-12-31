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

public class AdministratorDAO{


	private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;


	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}



	public void insert(Administrator Administrator){
        
    }


    public List<Administrator> getAll(){
        return jdbcTemplate.query("SELECT * FROM administrator",new AdministratorRowMapper());
    }

    public Boolean login(String Username, String Password){
        
        String sql = "SELECT * "
                + "FROM administrator WHERE ( (administrator.Username = ?) && (administrator.Password = ? ) )";

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
    
    public Administrator Details(String Username, String Password){
        
        String sql = "SELECT * "
                + "FROM administrator WHERE ( (administrator.Username="+ Username +") && (Administrator.Password =" + Password +"))";

        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            Administrator user = null;
            ResultSet rs = ps.executeQuery();
            int flag = 0;
            if ( rs.next() ) {
                user = new Administrator(
                    rs.getInt("AdminID"), rs.getString("Username"),
                    rs.getString("FirstName"),
                    rs.getString("LastName"),
                    rs.getString("Email"),rs.getString("Password")
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
    
    public ArrayList<Administrator> getAllAdministrators(){

        ArrayList<Administrator> Rep = new ArrayList<Administrator>();
        
        String sql = "SELECT Administrator.AdminID, Administrator.FirstName, Administrator.LastName FROM Administrator";

        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            Administrator user = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("Hi");
                user = new Administrator(
                    rs.getInt("AdminID"), "",
                    rs.getString("FirstName"),
                    rs.getString("LastName"),
                    "",""
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