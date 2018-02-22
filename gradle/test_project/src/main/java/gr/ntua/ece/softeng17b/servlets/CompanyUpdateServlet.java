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

public class CompanyUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyUpdateServlet() {
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
		String compname = request.getParameter("compname");
		String address = request.getParameter("addr");
		String webpage = request.getParameter("webpage");
		String description = request.getParameter("description");
		int postal = Integer.parseInt(request.getParameter("postal"));
		long tel = Long.parseLong(request.getParameter("tel"));
		int afm =  Integer.parseInt(request.getParameter("afm"));
		String bank = request.getParameter("bank");

		Double lat = Double.parseDouble(request.getParameter("latt"));
		Double lng = Double.parseDouble(request.getParameter("lngg"));
		String filename = request.getParameter("filename");
		
	     // do some processing here...

	    Company update_company = new Company(0, username,compname, 
							address, postal, tel, email, afm, password, bank, webpage, description, 0,0,filename, lat, lng);


        Configuration conf = Configuration.getInstance();
        DataAccess dataAccess = Configuration.getInstance().getDataAccess();
        CompanyDAO company_dao = new CompanyDAO();

		company_dao.setDataSource(dataAccess.dataSource);
		company_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

		company_dao.update(update_company);
	}

}