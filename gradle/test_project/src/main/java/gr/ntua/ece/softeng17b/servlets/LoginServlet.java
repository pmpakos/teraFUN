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

/**
 * Servlet implementation class LoginServlet
 */

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		String password = request.getParameter("password");
		int flag = Integer.parseInt(request.getParameter("flag"));

		System.out.println("Username: "+username);
		System.out.println("Password: "+password);


        Configuration conf = Configuration.getInstance();
        DataAccess dataAccess = Configuration.getInstance().getDataAccess();
        int result = 0,status=-1;
        if(flag == 0){
        	AdministratorDAO administrator_dao = new AdministratorDAO();
			administrator_dao.setDataSource(dataAccess.dataSource);
			administrator_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
			result = administrator_dao.login(username, password);
			System.out.println("San ADMIN!");
        }
        if(flag == 1){
        	ParentDAO parent_dao = new ParentDAO();
			parent_dao.setDataSource(dataAccess.dataSource);
			parent_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
			result = parent_dao.login(username, password);

        	ParentDAO parent_dao2 = new ParentDAO();
        	parent_dao2.setDataSource(dataAccess.dataSource);
			parent_dao2.setJdbcTemplate(dataAccess.jdbcTemplate);
			status = parent_dao2.checkStatus(result);
			/*
        	parent_dao.setDataSource(dataAccess.dataSource);
			parent_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
			status = parent_dao.checkStatus(result);
			*/
			System.out.println("San PARENT!");
        }
        if(flag ==2){
        	CompanyDAO company_dao = new CompanyDAO();
        	company_dao.setDataSource(dataAccess.dataSource);
			company_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
			result = company_dao.login(username, password);

        	CompanyDAO company_dao2 = new CompanyDAO();
        	company_dao2.setDataSource(dataAccess.dataSource);
			company_dao2.setJdbcTemplate(dataAccess.jdbcTemplate);
			status = company_dao2.checkStatus(result);
        	/*
        	company_dao.setDataSource(dataAccess.dataSource);
			company_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
			status = company_dao.checkStatus(result);
			*/
    	    System.out.println("San COMPANY!");
    	}

        String reply = Integer.toString(result);
        String flaga = Integer.toString(flag);
        String statusa = Integer.toString(status);

        if(result > 0){
        	HttpSession session = request.getSession();
			session.setAttribute("id", reply);
			session.setAttribute("flag", flaga);
			session.setAttribute("status", statusa);
			response.getWriter().append(statusa);
			response.getWriter().append(reply);
        	
  			// System.out.println("To id sou einai: "+reply);
		    // System.out.println("H kathgoria sou einai: "+flag);
		    String ididi= (String)session.getAttribute("id"); 
		    String flagidi= (String)session.getAttribute("flag"); 
		    String statusidi= (String)session.getAttribute("status"); 
	        System.out.println("Welcome "+ ididi +" pou anhkeis sthn kathgoria : "+ flagidi + " kai exeis status : "+ statusidi);
        }
        else{ 
        	System.out.println("Eimai kai edw: "+reply);
        	response.getWriter().append("0");
        	response.getWriter().append("0");
		}   		

	}

}