package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import gr.ntua.ece.softeng17b.conf.*;

public final class company_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>TeraFun</title>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css\">\n");
      out.write("  <style type=\"text/css\">\n");
      out.write("    body { padding-top: 70px; }\n");
      out.write("    .jumbotron {\n");
      out.write("      color: #2c3e50;\n");
      out.write("      background: #ecf0f1;\n");
      out.write("\n");
      out.write("    }\n");
      out.write("    .navbar-inverse {\n");
      out.write("      background: #2c3e50;\n");
      out.write("      color: white;\n");
      out.write("    }\n");
      out.write("    .navbar-inverse .navbar-brand, .navbar-inverse a{\n");
      out.write("      color:white;\n");
      out.write("      height:60px;\n");
      out.write("    }\n");
      out.write("    .navbar-inverse .navbar-nav>li>a {\n");
      out.write("      color: white;\n");
      out.write("      margin-top:10px;\n");
      out.write("      font-size:150%;\n");
      out.write("    } \n");
      out.write("    .navbar-brand img{\n");
      out.write("       height:50px;\n");
      out.write("       margin-top:0px;\n");
      out.write("    }\n");
      out.write("    .form-inline{\n");
      out.write("    margin-top:20px;\n");
      out.write("    }\n");
      out.write("    img {\n");
      out.write("    width: 200px; \n");
      out.write("    max-height: 200px;\n");
      out.write("    object-fit: cover;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("\n");
      out.write("  </style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <nav class=\"navbar navbar-inverse navbar-fixed-top\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                 <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-nav-demo\" aria-expanded=\"false\">\n");
      out.write("            <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("          </button>\n");
      out.write("            \n");
      out.write("                <a href=\"basics.html\" class=\"navbar-brand\"><img src=\"static/logo.png\"  class=\"img-responsive\" alt=\"\"/></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-nav-demo\">\n");
      out.write("                <ul class=\"nav navbar-nav\">\n");
      out.write("                    <li><a href=\"basics.html\">Αναζήτηση</a></li>\n");
      out.write("                    <li><a href=\"#\"> Επικοινωνία   </a></li>\n");
      out.write("                    <li><a href=\"#\"> Πληροφορίες   </a></li>\n");
      out.write("                    <li><a href=\"#\"> Ερωτήσεις   </a></li>\n");
      out.write("                                        \n");
      out.write("                \n");
      out.write("                \n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                    <li><a href=\"#\">Εγγραφή  <i class=\"fa fa-user-plus\"></i></a></li>\n");
      out.write("                        <li><a href=\"#about\">Σύνδεση  <i class=\"fa fa-user\"></i></a></li>\n");
      out.write("                </ul>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container\" id=\"ko\">\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-4\"></div>\n");
      out.write("                <div class=\"col-lg-4\">\n");
      out.write("                    <h1>\n");
      out.write("                       <span data-bind=\"text:companyname\"></span> \n");
      out.write("                    </h1>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"jumbotron\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("            \n");
      out.write("                <div class=\"col-lg-4\">\n");
      out.write("                    <div class=\"thumbnail\">\n");
      out.write("                        <img src=\"static/logo.png\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4\"></div>\n");
      out.write("                <div class=\"col-lg-4\">\n");
      out.write("                    \n");
      out.write("\n");
      out.write("                        <h2>\n");
      out.write("                            Στοιχεία Επικοινωνίας\n");
      out.write("                        </h2>\n");
      out.write("                        <p>\n");
      out.write("                            <span data-bind=\"text:address\"></span> \n");
      out.write("                            <a href=\"#\">\n");
      out.write("                            <span data-bind=\"text:web\"></span> \n");
      out.write("                            </a>\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div  class=\"jumbotron\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-4\"></div>\n");
      out.write("                <div class=\"col-lg-4\">\n");
      out.write("                    <h2 >Περιγραφή\n");
      out.write("                        \n");
      out.write("                    </h2>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4\"></div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("             <div class=\"row\">\n");
      out.write("                \n");
      out.write("                    <p>\n");
      out.write("                       <span data-bind=\"text:description\"></span> \n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-2.1.4.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js\" integrity=\"sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"./static/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"./static/knockout-3.4.2.js\"></script>\n");
      out.write("\n");
      out.write("    ");
 Configuration conf = Configuration.getInstance(); 
      out.write("\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("            \n");
      out.write("        var VM = function(){\n");
      out.write("            this.id = ko.observable();\n");
      out.write("            this.companyname = ko.observable(); \n");
      out.write("            this.web = ko.observable(); \n");
      out.write("            this.description =  ko.observable(); \n");
      out.write("            this.address =  ko.observable();      \n");
      out.write("        }\n");
      out.write("\n");
      out.write("        VM.prototype.loadCompany = function() {\n");
      out.write("            console.log(\"Loading company...\");\n");
      out.write("            var opts = {\n");
      out.write("                traditional : true,\n");
      out.write("                cache       : false,\n");
      out.write("                url         : \"./api/company/11\",\n");
      out.write("                type        : \"GET\",\n");
      out.write("                dataType    : \"json\"\n");
      out.write("            };\n");
      out.write("\n");
      out.write("            return $.ajax(opts); //returns a promise\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        var viewModel = new VM();\n");
      out.write("        console.log(\"Created VM\");            \n");
      out.write("\n");
      out.write("        viewModel.loadCompany().done(function(companyJson){\n");
      out.write("            console.log(\"Done loading companies.\");                 \n");
      out.write("            viewModel.id(companyJson.CompanyID);\n");
      out.write("            viewModel.companyname(companyJson.CompanyName);\n");
      out.write("            viewModel.web(companyJson.WebPage);\n");
      out.write("            viewModel.description(companyJson.Description);\n");
      out.write("            viewModel.address(companyJson.Address);\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        ko.applyBindings(viewModel, document.getElementById('ko'));            \n");
      out.write("        console.log(\"Applied bindings\");\n");
      out.write("    </script>\n");
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
