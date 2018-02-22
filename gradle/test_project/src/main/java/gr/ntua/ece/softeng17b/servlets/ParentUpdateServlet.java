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

import gr.ntua.ece.softeng17b.EmailSender;

import java.util.*;
/**
 * Servlet implementation class LoginServlet
 */

public class ParentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParentUpdateServlet() {
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


		String username = request.getParameter("usn");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("lname");
		String address = request.getParameter("addr");
		int postal = Integer.parseInt(request.getParameter("postal"));
		long tel = Long.parseLong(request.getParameter("tel"));
		long bank =  Long.parseLong(request.getParameter("bank"));
		Double lat = Double.parseDouble(request.getParameter("latt"));
		Double lng = Double.parseDouble(request.getParameter("lngg"));
		long vcode = Math.round(Math.random() * 89999) + 10000;
		
		System.out.println("username: " + username + "   vcode: " + vcode);
		
	     // do some processing here...

	    Parent update_parent = new Parent(0, username,firstname,lastname, 
						address, postal, tel, email, password, 0, 0, 0, bank, lat, lng, vcode);


        Configuration conf = Configuration.getInstance();
        DataAccess dataAccess = Configuration.getInstance().getDataAccess();
        ParentDAO parent_dao = new ParentDAO();

		parent_dao.setDataSource(dataAccess.dataSource);
		parent_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		parent_dao.update(update_parent);

		//EmailSender.verifmail(email,firstname,lastname,username,address,postal,bank,tel,vcode);


		/*to be removed, creates pdf with info about booking, just for testing here!!!!
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 5) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String ticket_code = salt.toString();
		System.out.println("Ticket code : "+ticket_code);
		String event_name = "Paidomazwma";
		EmailSender.ticketattachment(email,ticket_code,event_name);
		*/
	}

}