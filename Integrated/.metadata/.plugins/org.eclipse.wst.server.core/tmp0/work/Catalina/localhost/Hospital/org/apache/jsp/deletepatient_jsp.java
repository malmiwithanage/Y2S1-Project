/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.80
 * Generated at: 2023-10-26 18:19:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class deletepatient_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"ISO-8859-1\">\r\n");
      out.write("    <title>Delete Patient Account</title>\r\n");
      out.write("\r\n");
      out.write("    <style>\r\n");
      out.write("        * {\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        nav {\r\n");
      out.write("            background-color: rgba(51, 51, 51, 0.7);\r\n");
      out.write("            overflow: hidden;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        nav ul {\r\n");
      out.write("            list-style-type: none;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        nav ul li {\r\n");
      out.write("            float: left;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        nav ul li a {\r\n");
      out.write("            display: block;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("            padding: 20px 40px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        nav ul li a:hover {\r\n");
      out.write("            background-color: rgba(51, 51, 51, 0.75);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        nav ul {\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        nav ul li {\r\n");
      out.write("            margin-right: 20px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        nav {\r\n");
      out.write("            position: fixed;\r\n");
      out.write("            top: 0;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .active a {\r\n");
      out.write("            background-color: rgba(51, 51, 51, 1);\r\n");
      out.write("            color: #fff;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        body {\r\n");
      out.write("            background-image: url('images/image10.jpg');\r\n");
      out.write("            background-size: cover;\r\n");
      out.write("            background-repeat: no-repeat;\r\n");
      out.write("            font-family: Arial, sans-serif;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        h1 {\r\n");
      out.write("            font-size: 24px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        footer {\r\n");
      out.write("            position: fixed;\r\n");
      out.write("            bottom: 0;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            background-color: rgba(51, 51, 51, 0.7);\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            padding: 10px 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        footer p {\r\n");
      out.write("            margin: 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        table {\r\n");
      out.write("            border-collapse: collapse;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            margin-top: 10px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        th {\r\n");
      out.write("            background-color: rgba(51, 51, 51, 0.7);\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            padding: 10px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        td {\r\n");
      out.write("            border: 1px solid #ddd;\r\n");
      out.write("            padding: 10px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        tr {\r\n");
      out.write("            background-color: rgba(51, 51, 51, 0.7);\r\n");
      out.write("            height: 60px;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        tr:hover {\r\n");
      out.write("            background-color: rgba(51, 51, 51, 0.75);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        h1 {\r\n");
      out.write("            font-size: 24px;\r\n");
      out.write("            text-align: left;\r\n");
      out.write("            color: #333;\r\n");
      out.write("            margin-top: 70px;\r\n");
      out.write("            margin-left: 10px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        input[type=\"button\"] {\r\n");
      out.write("            width: 150px;\r\n");
      out.write("            background-color: #185AA3;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            padding: 10px;\r\n");
      out.write("            margin: 20px 20px;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 4px;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        input[type=\"button\"]:hover {\r\n");
      out.write("            background-color: #0A417D;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        input[type=\"submit\"] {\r\n");
      out.write("            width: 150px;\r\n");
      out.write("            background-color: #185AA3;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            padding: 10px;\r\n");
      out.write("            margin: 20px 20px;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 4px;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        input[type=\"submit\"]:hover {\r\n");
      out.write("            background-color: #0A417D;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<nav>\r\n");
      out.write("    <!-- Navigation Bar -->\r\n");
      out.write("    <ul>\r\n");
      out.write("        <li><a href=\"homepage.jsp\">Home</a></li>\r\n");
      out.write("        <li><a href=\"useraccount.jsp\">My Account</a></li>\r\n");
      out.write("        <li class=\"active\"><a href=\"search.jsp\">Patients</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");

String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String userName = request.getParameter("uname");
String password = request.getParameter("pass");
String address = request.getParameter("address");
String gender = request.getParameter("gender");
String dateofbirth = request.getParameter("dateofbirth");
String emergencycontact = request.getParameter("emergencycontact");
String medicalhistory = request.getParameter("medicalhistory");
String diagnosis = request.getParameter("diagnosis");
String allergies = request.getParameter("allergies");
String prescriptions = request.getParameter("prescriptions");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<form action=\"DeletePatientServlet\" method=\"post\">\r\n");
      out.write("    <!-- Display patient details -->\r\n");
      out.write("    <h1>Delete Patient Account</h1>\r\n");
      out.write("\r\n");
      out.write("    <table>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Patient ID</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"patid\" value=\"");
      out.print( id );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Name</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"name\" value=\"");
      out.print( name );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Email</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"email\" value=\"");
      out.print( email );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Phone number</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"phone\" value=\"");
      out.print( phone );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>User name</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"uname\" value=\"");
      out.print( userName );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Password</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"password\" name=\"pass\" value=\"");
      out.print( password );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Address</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"address\" value=\"");
      out.print( address );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Gender</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"gender\" value=\"");
      out.print( gender );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Date of Birth</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"dateofbirth\" value=\"");
      out.print( dateofbirth );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Emergency Contact</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"emergencycontact\" value=\"");
      out.print( emergencycontact );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Medical History</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"medicalhistory\" value=\"");
      out.print( medicalhistory );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Diagnosis</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"diagnosis\" value=\"");
      out.print( diagnosis );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Allergies</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"allergies\" value=\"");
      out.print( allergies );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>Prescriptions</td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <input type=\"text\" name=\"prescriptions\" value=\"");
      out.print( prescriptions );
      out.write("\" readonly><br>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("\r\n");
      out.write("    <input type=\"submit\" name=\"submit\" value=\"Delete My Account\"><br>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("\r\n");
      out.write("<footer>\r\n");
      out.write("    <p>&copy; 2023 By W.U.Malmi</p>\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
