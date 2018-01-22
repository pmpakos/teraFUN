package gr.ntua.ece.softeng17b.servlets;

import java.io.File;
import java.io.InputStream;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


import gr.ntua.ece.softeng17b.data.FileUpload;

import javax.servlet.http.*;

/**
 * Servlet implementation class UploadServlet
 */

public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       


	 
	   public void doPost(HttpServletRequest request,    HttpServletResponse response)   throws ServletException, java.io.IOException {
		   
		  
		   // Check that we have a file upload request
	      
	      response.setContentType("text/html");
	      boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	      java.io.PrintWriter out = response.getWriter( );

	   
	      
	      
	      if( !isMultipart )
	      {
	         out.println("No Upload This Time");
	         return;
	      }
	      ServletFileUpload upload = new ServletFileUpload();
	      try{
	    	  FileItemIterator itr= upload.getItemIterator(request);
	    	  while(itr.hasNext()){
	    		  FileItemStream item = itr.next();
	    		  if(item.isFormField()){
	    			 String fieldName = item.getFieldName();
	    			 InputStream is = item.openStream();
	    			 byte[] b= new byte[is.available()];
	    			 is.read(b);
	    			 String value=new String(b);
	    			 response.getWriter().println(fieldName+":"+value+"<br/>");
	    		  }
	    		  else{
	    			  //String path = getServletContext().getRealPath("/");
	    			   String path = new java.io.File( "." ).getCanonicalPath();
	    			  response.getWriter().println(path+"<br/>");
	    			  if (FileUpload.processFile(path,item))
	    				  response.getWriter().println("file success!!!");
	    			  else 
	    				  response.getWriter().println("pulo");
	    		  }
	    		  
	    	  }
	    	  	
	    	  
	      }catch(FileUploadException fue){
	    	  fue.printStackTrace();
	      }
	      
	      
	   }

	   public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { doPost(request, response); }
	   	    
	


}