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

/**
 * Servlet implementation class ForgotPasswordServlet
 */

public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPasswordServlet() {
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


		String email = request.getParameter("email");
		int flag = Integer.parseInt(request.getParameter("flag"));

		System.out.println("Email: "+email);
		System.out.println("Flag: "+flag);


        Configuration conf = Configuration.getInstance();
        DataAccess dataAccess = Configuration.getInstance().getDataAccess();
        String result="";
        if(flag == 1){
        	ParentDAO parent_dao = new ParentDAO();
			parent_dao.setDataSource(dataAccess.dataSource);
			parent_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
			result = parent_dao.getPassword(email);
			System.out.println("San PARENT!");
        }
        if(flag ==2){
        	CompanyDAO company_dao = new CompanyDAO();
        	company_dao.setDataSource(dataAccess.dataSource);
			company_dao.setJdbcTemplate(dataAccess.jdbcTemplate);
			result = company_dao.getPassword(email);
			System.out.println("San COMPANY!");
    	}
		EmailSender.remindpass(email,result);


	}

}