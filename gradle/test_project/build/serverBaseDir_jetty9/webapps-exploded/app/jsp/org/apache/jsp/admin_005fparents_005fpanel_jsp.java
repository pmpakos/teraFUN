package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005fparents_005fpanel_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("      <title>TeraFun. Where the fun begins!</title>\n");
      out.write("      <link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\">\n");
      out.write("      <link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/dataTables.min.css\"/>\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/header.css\"> \n");
      out.write("\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("     body { padding-top: 10px; } \n");
      out.write("    .toolbar {\n");
      out.write("      float: left;\n");
      out.write("    }\n");
      out.write("    .btn-admin {\n");
      out.write("        width:90px;\n");
      out.write("      }\n");
      out.write("    .btn-filter {\n");
      out.write("        width:100%;\n");
      out.write("      }\n");
      out.write("      h1{\n");
      out.write("        margin-top: 200px;\n");
      out.write("        width: 100%;\n");
      out.write("\n");
      out.write("        font-family: 'Open Sans', sans-serif;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("    <body>\n");
      out.write("        ");
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
      out.write("\n");
      out.write("       <div class=\"container\" id=\"ko\">\n");
      out.write("            <h1> <span data-bind=\"text:parents().length\"></span> Parents </h1>\n");
      out.write("\n");
      out.write("            <table id=\"Data\" class=\"table table-striped table-bordered\" data-bind=\"visible: parents().length > 0\">\n");
      out.write("                <thead class=\"thead-light\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"col\">Id</th>\n");
      out.write("                        <th scope=\"col\">Όνομα </th>\n");
      out.write("                        <th scope=\"col\">Eπώνυμο </th>\n");
      out.write("                        <th scope=\"col\">Διεύθυνση</th>\n");
      out.write("                        <th scope=\"col\">Τ.Κ.</th>\n");
      out.write("                        <th scope=\"col\">Τηλέφωνο Επικοινωνίας </th>\n");
      out.write("                        <th scope=\"col\">Username </th>\n");
      out.write("                        <th scope=\"col\">Email </th>\n");
      out.write("                        <th scope=\"col\">Πλήθος Κρατήσεων </th>\n");
      out.write("                        <th scope=\"col\">Πόντοι </th>\n");
      out.write("                        <th scope=\"col\">Αριθμός Κάρτας </th>\n");
      out.write("                        <th scope=\"col\">Status </th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>  \n");
      out.write("                <tbody data-bind=\"foreach:parents\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td> <span data-bind=\"text:id\"></span> </td>\n");
      out.write("                        <td> <span data-bind=\"text:firstname\"></span> </td>\n");
      out.write("                        <td> <span data-bind=\"text:lastname\"></span> </td>\n");
      out.write("                        <td> <span data-bind=\"text:address\"></span> </td>\n");
      out.write("                        <td> <span data-bind=\"text:postalcode\"></span> </td>\n");
      out.write("                        <td> <span data-bind=\"text:tel\"></span> </td>\n");
      out.write("                        <td> <span data-bind=\"text:username\"></span> </td>\n");
      out.write("                        <td> <span data-bind=\"text:email\"></span> </td>\n");
      out.write("                        <td> <span data-bind=\"text:cntbook\"></span> </td>                        \n");
      out.write("                        <td> <span data-bind=\"text:points\"></span> </td>\n");
      out.write("                        <td> <span data-bind=\"text:bankaccount\"></span> </td>\n");
      out.write("                        <td>\n");
      out.write("                            <button data-bind=\"visible: status==0\" type=\"button\" class=\"btn btn-default btn-admin\">Ανενεργός</button>\n");
      out.write("                            <button data-bind=\"visible: status==1, click: function(data, event) { change_status(id, 2, data, event) }\" type=\"button\" class=\"btn btn-danger btn-admin\">Block</button>\n");
      out.write("                            <button data-bind=\"visible: status==2, click: function(data, event) { change_status(id, 1, data, event) }\" type=\"button\" class=\"btn btn-info btn-admin\">Unblock</button>\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                    </tr>                   \n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js\" integrity=\"sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"./static/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"./static/knockout-3.4.2.js\"></script>\n");
      out.write("    <script src=\"./js/DataTable.js\"></script>\n");
      out.write("    <script src=\"./js/DataTable.bootstrap4.js\"></script>\n");
      out.write("    <script src=\"js/admin_panel_parent.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  </body>\n");
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
