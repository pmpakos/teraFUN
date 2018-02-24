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

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;

import java.util.*;

/**
 * Servlet implementation class CreateEventServlet
 */

public class CreateEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
	   public void doPost(HttpServletRequest request,    HttpServletResponse response)   throws ServletException, java.io.IOException {
		   // Check that we have a file upload request

	   		int compid = Integer.parseInt(request.getParameter("compid"));

			String name = request.getParameter("name");
			String addr = request.getParameter("addr");
			int postal = Integer.parseInt(request.getParameter("postal"));
			String date = request.getParameter("date");
			java.sql.Date sqlDate = null;
			//System.out.println(date+" arxh");
			try{
				DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
				Date utilDate = formatter.parse(date);
				sqlDate = new java.sql.Date(utilDate.getTime());

			}catch (ParseException e){
		     //System.out.println(" oxi");
			}
			String start = request.getParameter("start");
			int dur= Integer.parseInt(request.getParameter("dur"));
			String desc = request.getParameter("desc");
			String tag=request.getParameter("tag");
			int cap = Integer.parseInt(request.getParameter("cap"));
			int min = Integer.parseInt(request.getParameter("min"));
			int max = Integer.parseInt(request.getParameter("max"));
			int price= Integer.parseInt(request.getParameter("price"));
			int offer=0;
			String temp = request.getParameter("offer");
			if(temp=="ναι"){
				offer=1;
			}
			int ind=0,fun=0,sport=0,education=0,team=0;
			temp = request.getParameter("ind");
			if(temp=="true"){
				ind=1;
			}
			temp = request.getParameter("lea");
			if(temp=="true"){
				education=1;
			}
			temp = request.getParameter("fun");
			if(temp=="true"){
				fun=1;
			}
			temp = request.getParameter("ath");
			if(temp=="true"){
				sport=1;
			}
			temp = request.getParameter("team");
			if(temp=="true"){
				team=1;
			}

			Double lat = Double.parseDouble(request.getParameter("latt"));
			Double lng = Double.parseDouble(request.getParameter("lngg"));
			String path="event";
			
			System.out.println("CreateEventServlet: inserting event with name: " + name);
			
		 	Event event_insert = new Event(0,compid,name,addr,sqlDate,start,dur,0,0,price,desc,path,offer,0,lat,lng,cap,ind,min,max,fun,sport,education,team,tag);

		


	        Configuration conf = Configuration.getInstance();
	        DataAccess dataAccess = Configuration.getInstance().getDataAccess();
	        EventDAO event_dao = new EventDAO();

			event_dao.setDataSource(dataAccess.dataSource);
			event_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
			//event_dao.insert(event_insert);
			

			EventDAO event_dao2=new EventDAO();
			event_dao2.setDataSource(dataAccess.dataSource);
			event_dao2.setJdbcTemplate(dataAccess.jdbcTemplate);
			//int id = event_dao2.getId(event_insert);

			int id=10;
			System.out.println("To id einai: "+id);
			String reply=Integer.toString(id);
			response.getWriter().append(reply);
			
			
		}

	   public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { doPost(request, response); }
	   	


}
