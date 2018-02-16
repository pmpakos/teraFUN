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

import java.util.Date;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.jdbc.core.JdbcTemplate;

public class EventDAO{


	private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;


	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public void insert(Event event){
        
        String sql = "INSERT INTO event (Name, Address,"
                    + "DateEvent, Hour, Cost, Description, PhotosFolder, IsOffer, Latitude,"
                    + "Longitude, MaxCapacity, Indoor, MinAge, MaxAge, Fun, Sport, Education, Team, TagDescription)"
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        this.jdbcTemplate.update(sql, new Object[] {event.Name, event.Address, event.DateEvent,
            event.Hour, event.Cost, event.Description, event.PhotosFolder, event.IsOffer,
            event.Latitude, event.Longitude, event.MaxCapacity, event.Indoor, event.MinAge, 
            event.MaxAge, event.Fun, event.Sport, event.Education, event.Team, 
            event.TagDescription});   
    }

    public Optional<Event> getEvent(int id) {        
        List<Event> event = jdbcTemplate.query("select * from event where EventID = ?", new Object[] {id}, new EventRowMapper());
        if (event.size() == 1)  {
            return Optional.of(event.get(0));
        }
        else {
            return Optional.empty();
        }        
    }


    public List<Event> searchAll(String text_search, String date, String ticket, String age, String distance, String sports, String team_spirit, String fun, String education){
      


        int check_ticket = Integer.parseInt(ticket); 
        int check_text=0, check_age, check_date, check_sports, check_team, check_fun, check_education;

        //if (date.equals("")) check_date=-1;
       //else check_date=Integer.parseInt(date);

        if (text_search.equals("")) check_text=-1;
       

        if (age.equals("")) check_age=-1;
        else check_age=Integer.parseInt(age);

        if (sports.equals("")) check_sports=-1;
        else check_sports=Integer.parseInt(sports);

        if (team_spirit.equals("")) check_team=-1;
        else check_team=Integer.parseInt(team_spirit);


        if (fun.equals("")) check_fun=-1;
        else check_fun=Integer.parseInt(fun);

        if (education.equals("")) check_education=-1;
        else check_education=Integer.parseInt(education);

        String sql = "SELECT * FROM event WHERE (  )";
       
        String sql_text, sql_date, sql_ticket, sql_age, sql_sports, sql_team, sql_fun, sql_education;

        sql_text = "( MATCH (TagDescription) AGAINST(? IN NATURAL LANGUAGE MODE) OR (? = -1) )";
        sql_date = "";
        sql_ticket = "(? <=(MaxCapacity-TicketCounter)";
        sql_age = "(? >= MinAge and ? <= MaxAge) OR ? = -1)";
        sql_sports = "";
        sql_team = "";
        sql_fun = "";
        sql_education = "";

        sql = sql_age +" and "+ sql_ticket +  " and " + sql_text;

        return jdbcTemplate.query("SELECT * FROM event WHERE ("+ sql + ")", new Object[] {check_age, check_age, check_age, check_ticket, text_search, check_text}, new EventRowMapper());
        //WITH QUERY EXPANSION
    }

    public List<Event> getAll(){
        return jdbcTemplate.query("SELECT * FROM event",new EventRowMapper());
    }

    /*
    public ArrayList<Event> getAllEvents(){

        ArrayList<Event> Rep = new ArrayList<Event>();
        
        String sql = "SELECT event.EventID, event.Name FROM event";

        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            Event user = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("Hi");
                user = new Event(
                    rs.getInt("EventID"),0,
                    rs.getString("Name"),"",null,"",
                    0,0,0,"",0.0,0.0,0,0,0,0,0,0,
                    0,0,""
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
    */
}