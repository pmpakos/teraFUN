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
import java.text.SimpleDateFormat;
import java.text.ParseException;

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

    public List<Event> getPastEventsOfCompany(int id){
             return jdbcTemplate.query("SELECT * FROM event WHERE (CompanyID = ? and DateEvent < CURDATE())", new Object[] {id}, new EventRowMapper());


    }

     public List<Event> getActiveEventsOfCompany(int id){
             return jdbcTemplate.query("SELECT * FROM event WHERE (CompanyID = ? and DateEvent >= CURDATE())", new Object[] {id}, new EventRowMapper());


    }

    public List<Event> getPastEventsOfParent(int id){
            return jdbcTemplate.query("SELECT * FROM event, booking, parent WHERE ((event.EventID = booking.EventID) and (booking.ParentID = parent.ParentID) and (parent.ParentID = ?) and (event.DateEvent < CURDATE()))", new Object[] {id}, new EventRowMapper());


    }

    public List<Event> getActiveEventsOfParent(int id){
            return jdbcTemplate.query("SELECT * FROM event, booking, parent WHERE ((event.EventID = booking.EventID) and (booking.ParentID = parent.ParentID) and (parent.ParentID = ?) and (event.DateEvent >= CURDATE()))", new Object[] {id}, new EventRowMapper());


    }

    public List<Event> searchAll(String text_search, String date, String ticket, String age, String distance, String kind, String team, String indoor, String offer){
      

       
        String sql, sql_text, sql_date, sql_ticket, sql_age, sql_kind, sql_team, sql_indoor, sql_offer;

        //Date new_date=null;

        int check_ticket = Integer.parseInt(ticket); 
        int check_text=0, check_age, check_date=0, check_kind, check_team, check_indoor, check_offer;

        //if (date.equals("")) check_date=-1;
       //else check_date=Integer.parseInt(date);
       
        if (text_search.equals("")) check_text=-1;
       
        if (date.equals("")) check_date = -1;
        else{

            String day, month, year;
            String parts[];
            parts=date.split("/");
            day = parts[0];
            month = parts[1];
            year = parts[2];
            date = year + "-" + month + "-" + day;
            System.out.println(date);
        }
   // Date date2 = new Date();

        
        /*else{
            try{
            SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            new_date = formatter.parse(date);
            } catch (ParseException e) {
            e.printStackTrace();
        }


        }*/
 //System.out.println("DATE IS:"+new_date +" AND CHECK IS:"+check_date);



        if (age.equals("")) check_age=-1;
        else check_age=Integer.parseInt(age);

        if (kind.equals("")) sql_kind = "(TRUE)";
        else if(kind.equals("Άθληση")) sql_kind = "( Sport = 1)";
        else if(kind.equals("Εκπαίδευση")) sql_kind= "(Education = 1)";
        else sql_kind = "( Fun = 1)";

        if (team.equals("")) sql_team = "(TRUE)";
        else if (team.equals("Ομαδικό")) sql_team = "(Team = 1)";
        else sql_team = "(Team = 0)";

        if (indoor.equals("")) sql_indoor = "(TRUE)";
        else if (indoor.equals("Εσωτερικός")) sql_indoor = "( Indoor = 1)";
        else sql_indoor = "( Indoor = 0)";

        if (offer.equals("")) sql_offer = "(TRUE)";
        else if (offer.equals("Ναι")) sql_offer = "( IsOffer = 1)";
        else sql_offer = "( IsOffer = 0)";

        
        sql_text = "( MATCH (TagDescription) AGAINST(? IN NATURAL LANGUAGE MODE) OR (? = -1) )";
        
        sql_ticket = "(? <=(MaxCapacity-TicketCounter))";
        sql_age = "((? >= MinAge and ? <= MaxAge) OR ? = -1)";
        sql_date = "( (DATE_FORMAT(DateEvent, '%Y-%m-%d') >= ?) OR (? = -1) )";
       // sql_date = "( (DATE_FORMAT(DateEvent, '%d/%m/%Y') >= ?) OR ? = -1 )";
       // sql_date = "( (date2 > DateEvent) OR ? = -1 )";
        

        sql =  sql_date + " and " + sql_age +" and "+ sql_ticket + " and " + sql_text+ " and " + sql_kind+ " and " + sql_team+ " and " + sql_indoor + " and " + sql_offer;

        return jdbcTemplate.query("SELECT * FROM event WHERE ("+ sql + ")", new Object[] { date, check_date, check_age, check_age, check_age, check_ticket, text_search, check_text}, new EventRowMapper());

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
