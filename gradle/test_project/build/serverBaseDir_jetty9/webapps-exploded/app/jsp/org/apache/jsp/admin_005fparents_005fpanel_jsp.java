package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005fparents_005fpanel_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("      <title>TeraFun. Where the fun begins!</title>\n");
      out.write("      <link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\">\n");
      out.write("      <link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/dataTables.min.css\"/>\n");
      out.write("\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("     body { padding-top: 10px; } \n");
      out.write("    .toolbar {\n");
      out.write("      float: left;\n");
      out.write("    }\n");
      out.write("    .btn-admin {\n");
      out.write("        width:90;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("    .jumbotron {\n");
      out.write("        color: #2c3e50;\n");
      out.write("        background: #ecf0f1;\n");
      out.write("        height: 190px;\n");
      out.write("      }\n");
      out.write("      .navbar-inverse {\n");
      out.write("        background: #2c3e50;\n");
      out.write("        color: white;\n");
      out.write("      }\n");
      out.write("      .navbar-inverse .navbar-brand, .navbar-inverse a{\n");
      out.write("        color:white;\n");
      out.write("        height:60px;\n");
      out.write("      }\n");
      out.write("      .navbar-inverse .navbar-nav>li>a {\n");
      out.write("        color: white;\n");
      out.write("        margin-top:10px;\n");
      out.write("        font-size:150%;\n");
      out.write("      } \n");
      out.write("      .navbar-brand img{\n");
      out.write("         height:50px;\n");
      out.write("         margin-top:0px;\n");
      out.write("      }\n");
      out.write("      .form-inline{\n");
      out.write("      margin-top:20px;\n");
      out.write("      }\n");
      out.write("      .footer{\n");
      out.write("        margin-top:20px;\n");
      out.write("        background-color: #ecf0f1;\n");
      out.write("        color: black;\n");
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
      out.write("                    <a href=\"index.html\" class=\"navbar-brand\"><img src=\"logo.png\"  class=\"img-responsive\" alt=\"\"/></a>\n");
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
      out.write("                            <button data-bind=\"visible: status==1\" type=\"button\" class=\"btn btn-danger btn-admin\">Block</button>\n");
      out.write("                            <button data-bind=\"visible: status==2\" type=\"button\" class=\"btn btn-info btn-admin\">Unblock</button>\n");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("            $(document).ready(function() {\n");
      out.write("              var table = $('#Data').DataTable( {\n");
      out.write("                  \"paging\": true,\n");
      out.write("                  \"iDisplay\": 10,\n");
      out.write("                  \"bLengthChange\": false,\n");
      out.write("                  //\"pagingType\": \"simple_numbers\",\n");
      out.write("                  //\"scrollY\": \"200px\",\n");
      out.write("                  //\"stateSave\": true,\n");
      out.write("                  //\"searching\": true,\n");
      out.write("                  \"dom\": '<\"toolbar\">frtip'\n");
      out.write("                } );\n");
      out.write("   \n");
      out.write("              $(\"div.toolbar\").html(\n");
      out.write("            '<div class=\"row\">'+\n");
      out.write("              '<div class=\"col-lg-12\">'+\n");
      out.write("                 '<div class=\"button-group\">'+\n");
      out.write("                    '<button type=\"button\" class=\"btn btn-default btn-sm dropdown-toggle\" data-toggle=\"dropdown\"><span class=\"glyphicon '+\n");
      out.write("                      'glyphicon-filter\"> Φίλτρα</span> <span class=\"caret\"></span></button>'+\n");
      out.write("                    '<ul class=\"dropdown-menu\">'+\n");
      out.write("                      '<li> <button id=\"check0\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"0\">Id </button> </li>         '+\n");
      out.write("                      '<li> <button id=\"check1\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"1\">Όνομα</button> </li>'+\n");
      out.write("                      '<li> <button id=\"check2\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"2\">Επώνυμο</button> </li>'+\n");
      out.write("                      '<li> <button id=\"check3\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"3\">Διεύθυνση</button> </li>'+\n");
      out.write("                      '<li> <button id=\"check4\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"4\">Τ.Κ.</button> </li>'+\n");
      out.write("                      '<li> <button id=\"check5\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"5\">Τηλέφωνο Επικοινωνίας</button></li>'+\n");
      out.write("                      '<li> <button id=\"check6\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"6\">Username</button> </li>'+\n");
      out.write("                      '<li> <button id=\"check7\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"7\">Email</button> </li>'+\n");
      out.write("                      '<li> <button id=\"check8\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"8\">Πλήθος Κρατήσεων</button> </li>'+\n");
      out.write("                      '<li> <button id=\"check9\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"9\">Πόντοι</button> </li>'+\n");
      out.write("                      '<li> <button id=\"check10\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"10\">Αριθμός Κάρτας</button> </li>'+\n");
      out.write("                      '<li> <button id=\"check11\" type=\"button\" class=\"toggle-vis btn btn-success\" data-column=\"11\">Status</button> </li>'+\n");
      out.write("                    '</ul>'+\n");
      out.write("                '</div>'+\n");
      out.write("              '</div>'+\n");
      out.write("            '</div>'\n");
      out.write("              );\n");
      out.write("          \n");
      out.write("            $('[id^=\"check\"]').click(function () {\n");
      out.write("                 $(this).toggleClass('btn-success btn-danger'); \n");
      out.write("            });\n");
      out.write("\n");
      out.write("\n");
      out.write("              $('.toggle-vis').on( 'click', function (e) {\n");
      out.write("                  e.preventDefault();\n");
      out.write("           \n");
      out.write("                  // Get the column API object\n");
      out.write("                  var column = table.column( $(this).attr('data-column') );\n");
      out.write("           \n");
      out.write("                  // Toggle the visibility\n");
      out.write("                  column.visible( !column.visible() );\n");
      out.write("              } );\n");
      out.write("            } );\n");
      out.write("\n");
      out.write("\n");
      out.write("             \n");
      out.write("            var Parent = function(id,firstname, lastname, username, address, postalcode, tel, email, cntbook, status, points, bankaccount) {\n");
      out.write("                this.id = id;\n");
      out.write("                this.firstname = firstname;\n");
      out.write("                this.lastname = lastname;\n");
      out.write("                this.username = username;\n");
      out.write("                this.address = address;\n");
      out.write("                this.postalcode = postalcode; \n");
      out.write("                this.tel = tel; \n");
      out.write("                this.email = email;\n");
      out.write("                this.cntbook = cntbook; \n");
      out.write("                this.status = status;\n");
      out.write("                this.points = points;\n");
      out.write("                this.bankaccount = bankaccount;\n");
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
      out.write("                console.log(\"Done loading parents.\");                 \n");
      out.write("\n");
      out.write("                json.results.forEach(function(parentJson){             \n");
      out.write("                    var parent = new Parent(\n");
      out.write("                        parentJson.ParentID,\n");
      out.write("                        parentJson.FirstName,\n");
      out.write("                        parentJson.LastName,\n");
      out.write("                        parentJson.Username,\n");
      out.write("                        parentJson.Address,\n");
      out.write("                        parentJson.PostalCode,\n");
      out.write("                        parentJson.TelephoneNumber,\n");
      out.write("                        parentJson.Email,\n");
      out.write("                        parentJson.CounterEvents,\n");
      out.write("                        parentJson.Status,\n");
      out.write("                        parentJson.Points,\n");
      out.write("                        parentJson.BankAccount,\n");
      out.write("                        );\n");
      out.write("                    console.log(parent);\n");
      out.write("                    viewModel.parents.push(parent);\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("\n");
      out.write("            ko.applyBindings(viewModel, document.getElementById('ko'));            \n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  </body>\n");
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
