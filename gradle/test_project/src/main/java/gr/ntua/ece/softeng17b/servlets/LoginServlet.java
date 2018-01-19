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
		int isParent = Integer.parseInt(request.getParameter("isParent"));

        Configuration conf = Configuration.getInstance();
        DataAccess dataAccess = Configuration.getInstance().getDataAccess();
        int result = 0;
        if(isParent == 1){
        	ParentDAO parent_dao = new ParentDAO();

			parent_dao.setDataSource(dataAccess.dataSource);
			parent_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
			System.out.println("Eimai kai edw: "+username);
			result = parent_dao.login(username, password);
        }
        else{
        	CompanyDAO company_dao = new CompanyDAO();

			company_dao.setDataSource(dataAccess.dataSource);
			company_dao.setJdbcTemplate(dataAccess.jdbcTemplate);

			result = company_dao.login(username, password);
        }

        String reply = Integer.toString(result);

        if(result > 0){
        	HttpSession session = request.getSession();
			session.setAttribute("id", reply);			
			response.getWriter().append(reply);
        }
        else{ 
        	//System.out.println("Eimai kai edw: "+reply);
        	response.getWriter().append("0");
		}   

		/*

		    String uname= (String)session.getAttribute("id"); 
            out.print("Welcome "+ uname);%>
		*/
	}

}