package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import gr.ntua.ece.softeng17b.conf.*;

public final class parent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <title>Ajax and MVVM example</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./static/bootstrap/css/bootstrap.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./static/font-awesome/css/font-awesome.min.css\"/>\n");
      out.write("        <style>\n");
      out.write("            .gmap {\n");
      out.write("                height: 400px;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"container\" id=\"ko\">\n");
      out.write("            <h1>\n");
      out.write("                <span data-bind=\"text:parents().length\"></span> Parents\n");
      out.write("            </h1>\n");
      out.write("            <table class=\"table\" data-bind=\"visible: parents().length > 0\">\n");
      out.write("                <thead class=\"thead-light\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"col\">\n");
      out.write("                            Όνομα\n");
      out.write("                        </th>\n");
      out.write("                        <th scope=\"col\">\n");
      out.write("                            Eπώνυμοooooo\n");
      out.write("                        </th>\n");
      out.write("                        <th scope=\"col\">         \n");
      out.write("                            Id                   \n");
      out.write("                        </th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>  \n");
      out.write("                <tbody data-bind=\"foreach:parents\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <span data-bind=\"text:firstname\"></span>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <span data-bind=\"text:lastname\"></span>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <span data-bind=\"text:id\"></span>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("            <div class=\"gmap\" id=\"map\">\n");
      out.write("        </div>\n");
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
      out.write("        function init() {\n");
      out.write("            \n");
      out.write("          \n");
      out.write("          //  var map = new google.maps.Map(document.getElementById('map'), {\n");
      out.write("          //      zoom: 13,\n");
      out.write("          //      center: ece\n");
      out.write("          //  });\n");
      out.write("\n");
      out.write("          //  console.log(\"Created map\");\n");
      out.write("             \n");
      out.write("            var Parent = function(id, firstname, lastname) {\n");
      out.write("                this.id = id;\n");
      out.write("                this.firstname = firstname;\n");
      out.write("                this.lastname = lastname;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            var VM = function(){\n");
      out.write("                this.parents = ko.observableArray();            \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            VM.prototype.loadParents = function() {\n");
      out.write("                console.log(\"Loading parents...\");\n");
      out.write("                var opts = {\n");
      out.write("                    traditional : true,\n");
      out.write("                    cache       : false,\n");
      out.write("                    url         : \"./api/parents\",\n");
      out.write("                    type        : \"GET\",\n");
      out.write("                    dataType    : \"json\"\n");
      out.write("                };\n");
      out.write("\n");
      out.write("                return $.ajax(opts); //returns a promise\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            var viewModel = new VM();\n");
      out.write("            console.log(\"Created VM\");            \n");
      out.write("\n");
      out.write("            viewModel.loadParents().done(function(json){\n");
      out.write("                console.log(\"Done loading places.\");                 \n");
      out.write("\n");
      out.write("                json.results.forEach(function(parentJson){             \n");
      out.write("                    var parent = new Parent(\n");
      out.write("                        parentJson.ParentID,\n");
      out.write("                        parentJson.FirstName,\n");
      out.write("                        parentJson.LastName\n");
      out.write("                        );\n");
      out.write("                    console.log(parent);\n");
      out.write("                    viewModel.parents.push(parent);\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("\n");
      out.write("            ko.applyBindings(viewModel, document.getElementById('ko'));            \n");
      out.write("            console.log(\"Applied bindings\");\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("   \n");
      out.write("    <script> init(); </script>\n");
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
