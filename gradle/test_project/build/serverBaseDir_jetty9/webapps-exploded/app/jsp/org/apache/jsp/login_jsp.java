package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
  }

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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>Login | teraFUN</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<!-- Latest compiled and minified CSS -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\"> \n");
      out.write("\t<script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js\"></script> \n");
      out.write("\t<!-- Latest compiled JavaScript -->\n");
      out.write("\t<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("\t<script src=\"js/login.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/stylelogin.css\"> \n");
      out.write("<link rel=\"stylesheet\" href=\"css/header.css\"> \n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"> -->\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                     <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-nav-demo\" aria-expanded=\"false\">\n");
      out.write("                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                <span class=\"icon-bar\"></span>\n");
      out.write("                <span class=\"icon-bar\"></span>\n");
      out.write("                <span class=\"icon-bar\"></span>\n");
      out.write("              </button>\n");
      out.write("                \n");
      out.write("                    <a href=\"index.html\" class=\"navbar-brand\"><img src=\"static/logo.png\"  class=\"img-responsive\" alt=\"\"/></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"bs-nav-demo\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li><a href=\"#\"> Επικοινωνία </a></li>\n");
      out.write("                        <li><a href=\"#\"> Σχετικά </a></li>                \n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li><a href=\"signup_parent.jsp\">Εγγραφή  <i class=\"fa fa-user-plus\"></i></a></li>\n");
      out.write("                            <li><a href=\"login.jsp\">Σύνδεση<i class=\"fa fa-user\"></i></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <form class=\"form-inline my-2 my-lg-0\">\n");
      out.write("                          <input class=\"form-control mr-sm-2 \" type=\"search\" placeholder=\"Αναζήτηση\" aria-label=\"Search\">\n");
      out.write("                              <button class=\"btn btn-danger my-2 my-sm-0\" type=\"submit\">Αναζήτηση</button>\n");
      out.write("                        </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<div class=\"container\">\n");
      out.write("    \t<div class=\"row\">\n");
      out.write("\t\t\t<div class=\"col-md-6 col-md-offset-3\">\n");
      out.write("\t\t\t\t<div class=\"panel panel-login\">\n");
      out.write("\t\t\t\t\t<div class=\"panel-heading\">\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-xs-6\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#\" class=\"active\" id=\"login-form-link\">Σύνδεση Χρήστη</a>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-xs-6\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#\" id=\"register-form-link\">Σύνδεση Επιχείρησης</a>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<hr>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-lg-12\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<form id=\"login-form\" role=\"form\" style=\"display: block;\">\n");
      out.write("\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group usn\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<label for=\"usn\"> <span class=\"glyphicon glyphicon-user\"> </span>UserName</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"usn\" id=\"usn\" tabindex=\"1\" class=\"form-control usn-val form-element\" placeholder=\"Username\" value=\"\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"error\"><p1 id=\"usn_error1\"></p1></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group pass\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<label for=\"password\"><span class=\"glyphicon glyphicon-eye-open\"></span> Password</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"password\" name=\"pass\" id=\"password\" tabindex=\"2\" class=\"form-control pass-val form-element\" placeholder=\"Password\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"error\"><p1 id=\"pass_error1\"></p1></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6 col-sm-offset-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<button type=\"button\" name=\"loginp-submit\" id=\"loginp-submit\" tabindex=\"4\" class=\"form-control btn btn-loginp\"><span>ΣΥΝΔΕΣΗ </span></button>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-lg-12\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://localhost:8765/app/forgot_pass\" tabindex=\"5\" class=\"forgot-password\">Forgot Password?</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t\t<form id=\"register-form\" role=\"form\" style=\"display: none;\">\n");
      out.write("\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group usn1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<label for=\"username\"> <span class=\"glyphicon glyphicon-user\"> </span> UserName</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"usn1\" id=\"username\" tabindex=\"1\" class=\"form-control usn-val2 form-element\" placeholder=\"Username\" value=\"\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"error\"><p1 id=\"usn_error2\"></p1></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group pass1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<label for=\"password\"><span class=\"glyphicon glyphicon-eye-open\"></span> Password</label>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"password\" name=\"pass1\" id=\"password\" tabindex=\"2\" class=\"form-control pass-val2 form-elementSS\" placeholder=\"Password\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"error\"><p1 id=\"pass_error2\"></p1></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-6 col-sm-offset-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<button type=\"button\" name=\"loginc-submit\" id=\"loginc-submit\" tabindex=\"4\" class=\"form-control btn btn-loginc\"><span>ΣΥΝΔΕΣΗ </span></button>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-lg-12\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://localhost:8765/app/forgot_pass\" tabindex=\"5\" class=\"forgot-password\">Forgot Password?</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\t\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
