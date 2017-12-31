package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import gr.ntua.ece.softeng17b.*;
import gr.ntua.ece.softeng17b.conf.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n");
      out.write("    <title>JSP</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <h2>\n");
      out.write("        \tConfiguration\n");
      out.write("    \t</h2>\n");
      out.write("    \t<div>\n");
      out.write("    \t\t");

    		Configuration conf = Configuration.getInstance();
    		for(String key : conf.propertyNames()) {
    		
      out.write("\n");
      out.write("    \t\t\t<div>\n");
      out.write("    \t\t\t\t");
      out.print( key );
      out.write(" : ");
      out.print( conf.getProperty(key) );
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("    \t\t");
 } 
      out.write("\n");
      out.write("    \t</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    \t<h2>\n");
      out.write("    \t\tCalculation\n");
      out.write("    \t</h2>\n");
      out.write("\n");
      out.write("        <div>\n");
      out.write("        \t<form method=\"get\">\n");
      out.write("        \t\t<input type=\"text\" name=\"numbers\" size=\"48\" placeholder=\"Εισάγετε ακεραίους χωρισμένους με κόμμα\">\n");
      out.write("        \t\t<button type=\"submit\">Υπολογισμός kokolala</button>\n");
      out.write("    \t\t</form>\n");
      out.write("    \t</div>\n");
      out.write("\n");
      out.write("    \t");

    	String inputNumbers = request.getParameter("numbers");
    	if (inputNumbers != null) {    	
    		Numbers numbers = Numbers.parse(inputNumbers);
    	
      out.write("\n");
      out.write("\t    \t<hr>\n");
      out.write("\t    \t<div>\n");
      out.write("\t    \tΠλήθος: ");
      out.print( numbers.count() );
      out.write(" αριθμοί.\n");
      out.write("\t    \t</div>\n");
      out.write("\n");
      out.write("\t    \t<div>\n");
      out.write("\t    \tΆθροισμα: ");
      out.print( numbers.sum() );
      out.write("\n");
      out.write("\t    \t</div>\n");
      out.write("\n");
      out.write("    \t");

    	}
    	
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
