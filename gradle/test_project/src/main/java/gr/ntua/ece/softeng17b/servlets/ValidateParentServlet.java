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
 * Servlet implementation class ValidateParentServlet
 */

public class ValidateParentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateParentServlet() {
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
		String ver_code = request.getParameter("ver_code");

		System.out.println("Username: "+username);
		System.out.println("Verification code: "+ver_code);


        Configuration conf = Configuration.getInstance();
        DataAccess dataAccess = Configuration.getInstance().getDataAccess();
        int result = 0,status=-1;
    	ParentDAO parent_dao = new ParentDAO();
		parent_dao.setDataSource(dataAccess.dataSource);
		parent_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
		result = parent_dao.validate(username, ver_code);

        String reply = Integer.toString(result);

        if(result > 0){
	    	ParentDAO parent_dao2 = new ParentDAO();
	    	parent_dao2.setDataSource(dataAccess.dataSource);
			parent_dao2.setJdbcTemplate(dataAccess.jdbcTemplate);
			parent_dao2.changeStatus(result, 1);//make it verificated!!!

			response.getWriter().append(reply);

  			// System.out.println("To id sou einai: "+reply);
		    // System.out.println("H kathgoria sou einai: "+flag);
	        System.out.println("Welcome "+ Integer.toString(result) +" pou exeis status : 1 pleon");
        }
        else{ 
        	System.out.println("Eimai kai edw: "+reply);
        	response.getWriter().append("0");
		}   		

	}

}