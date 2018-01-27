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

import java.util.*;

/**
 * Servlet implementation class CompanySignupServlet
 */

public class CompanySignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       


	 
	   public void doPost(HttpServletRequest request,    HttpServletResponse response)   throws ServletException, java.io.IOException {
		   
		  
		   // Check that we have a file upload request
	    
		  // String password = request.getParameter("password");
	
			String username = request.getParameter("usn");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String compname = request.getParameter("compname");
			String address = request.getParameter("addr");
			String webpage = request.getParameter("webpage");
			String description = request.getParameter("description");
			int postal = Integer.parseInt(request.getParameter("postal"));
			long tel = Long.parseLong(request.getParameter("tel"));
			int afm =  Integer.parseInt(request.getParameter("afm"));
			Double lat = Double.parseDouble(request.getParameter("latt"));
			Double lng = Double.parseDouble(request.getParameter("lngg"));
			// long vcode = Math.round(Math.random() * 89999) + 10000;
			
			System.out.println("CompanySignupServlet: inserting company with username: " + username);
			
		     // do some processing here...

		    Company insert_company = new Company(0, username,compname, 
							address, postal, tel, email, afm, password, 0, webpage, description, 0, 0, username, lat, lng);


	        Configuration conf = Configuration.getInstance();
	        DataAccess dataAccess = Configuration.getInstance().getDataAccess();
	        CompanyDAO company_dao = new CompanyDAO();

			company_dao.setDataSource(dataAccess.dataSource);
			company_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

			company_dao.insert(insert_company);
		}

	   public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { doPost(request, response); }
	   	


}