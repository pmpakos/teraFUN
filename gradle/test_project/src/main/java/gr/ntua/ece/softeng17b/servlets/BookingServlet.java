package gr.ntua.ece.softeng17b.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;

import gr.ntua.ece.softeng17b.conf.*;
import gr.ntua.ece.softeng17b.data.*;
import org.restlet.resource.ResourceException;
import org.restlet.data.Status;
import gr.ntua.ece.softeng17b.EmailSender;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.*;
/**
 * Servlet implementation class LoginServlet
 */

public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//to be removed, creates pdf with info about booking, just for testing here!!!!
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 5) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String ticket_code = salt.toString();
		int parentID = Integer.parseInt(request.getParameter("parentID"));
		int eventID = Integer.parseInt(request.getParameter("eventID"));
		String date = request.getParameter("date");
		int tickets = Integer.parseInt(request.getParameter("tickets"));
		java.sql.Date sqlDate = null;
		//System.out.println(date+" arxh");
		try{
			DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			Date utilDate = formatter.parse(date);
			sqlDate = new java.sql.Date(utilDate.getTime());

		}catch (ParseException e){
	     //System.out.println(" oxi");
		}

		Booking insert_booking = new Booking(0, parentID, eventID, sqlDate, tickets, ticket_code);
        Configuration conf = Configuration.getInstance();
        DataAccess dataAccess = Configuration.getInstance().getDataAccess();
        BookingDAO booking_dao = new BookingDAO();

		booking_dao.setDataSource(dataAccess.dataSource);
		booking_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		ParentDAO parent_dao = new ParentDAO();

		parent_dao.setDataSource(dataAccess.dataSource);
		parent_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		EventDAO event_dao = new EventDAO();

		event_dao.setDataSource(dataAccess.dataSource);
		event_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		Optional<Parent> optional = parent_dao.getParent(parentID);		
		Parent parent = optional.orElseThrow(() -> new ResourceException(Status.CLIENT_ERROR_NOT_FOUND, "Not found place with id: " + parentID));

		Optional<Event> optional1 = event_dao.getEvent(eventID);		
		Event event = optional1.orElseThrow(() -> new ResourceException(Status.CLIENT_ERROR_NOT_FOUND, "Not found place with id: " + eventID));

		int cost = event.getCost();
		//System.out.println("Το κόστος είναι: "+parent.getPoints()+", "+cost);
		if(parent.getPoints() < cost*tickets){
			response.getWriter().append("Fail");
			return;
		}
		
		if(parent.getStatus() == 1){
			response.getWriter().append("Pay");
			return;
		}
		if(tickets + event.getTicketCounter() > event.getMaxCapacity()){
			response.getWriter().append("Tickets");
			return;
		}

		booking_dao.insert(insert_booking);
		
		//System.out.println("Ticket code : "+ticket_code + "To mister "+parent.getEmail());
		EmailSender.ticketattachment(parent.getEmail(),ticket_code,event.getName());
		response.getWriter().append("Success");
		
		
	}

}
