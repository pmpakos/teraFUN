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


import gr.ntua.ece.softeng17b.data.FileUploadComp;

import javax.servlet.http.*;
/**
 * Servlet implementation class UploadImageCompanyServlet
 */

public class UploadImageCompanyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
	public void doPost(HttpServletRequest request,    HttpServletResponse response)   throws ServletException, java.io.IOException {
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		java.io.PrintWriter out = response.getWriter( );
		if( !isMultipart )
		{
			System.out.println("No Upload This Time");
			return;
		}
		String username="default";
		String value[]=new String[20];
		int i=0;
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
					value[i]=new String(b);
					if(i==0){
						username=value[i];
					}
					i++;
				}
				else{
					String temp="user_profiles/"+username;
					String fieldName = item.getFieldName();
					String fileName = item.getName();
					if(fileName!=""){
						String path = new java.io.File( "." ).getCanonicalPath();
						if (FileUploadComp.processFile(path,item,fileName,temp))
							System.out.println("ela");
						else 
							System.out.println("alh8eia?");
					}
				}
			}
		}catch(FileUploadException fue){
			fue.printStackTrace();
		}
		response.sendRedirect("https://localhost:8765/app/sign_up_complete.jsp?fv=2");
	}	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { doPost(request, response); }
}