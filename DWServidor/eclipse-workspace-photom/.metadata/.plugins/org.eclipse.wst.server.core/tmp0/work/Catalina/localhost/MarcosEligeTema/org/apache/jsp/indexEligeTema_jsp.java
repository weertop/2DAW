/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.92
 * Generated at: 2019-11-19 04:31:53 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.time.*;
import modelo.Archivos;

public final class indexEligeTema_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


		LocalTime t = LocalTime.now();
		
	
  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
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

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Elige Tema</title>\r\n");
      out.write("</head>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"CSS.css\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("body {\r\n");
      out.write("\toverflow-x: hidden;\r\n");
      out.write("\tfont-family: \"Impact\", sans-serif;\r\n");
      out.write("\tfont-weight: 300;\r\n");
      out.write("\tbackground: #114357; /* fallback for old browsers */\r\n");
      out.write("\tbackground: -webkit-linear-gradient(to right, #114357, #f29492);\r\n");
      out.write("\t/* Chrome 10-25, Safari 5.1-6 */\r\n");
      out.write("\tbackground: linear-gradient(to right, #114357, #f29492);\r\n");
      out.write("\t/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("table {\r\n");
      out.write("\t background: #200122; /* fallback for old browsers */\r\n");
      out.write("  background: -webkit-linear-gradient(to right, #200122, #6f0000); /* Chrome 10-25, Safari 5.1-6 */\r\n");
      out.write("  background: linear-gradient(to right, #200122, #6f0000); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".submit {\r\n");
      out.write("\tborder-radius: 5px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".reset {\r\n");
      out.write("\tborder-radius: 5px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("h1 {\r\n");
      out.write("\tcolor: white; \r\n");
      out.write("\ttext-shadow:2px 2px black;\r\n");
      out.write("}\r\n");
      out.write("h3 {\r\n");
      out.write("\tcolor: white; \r\n");
      out.write("\ttext-shadow:5px 5px black;\r\n");
      out.write("}\r\n");
      out.write(".submit:hover {\r\n");
      out.write("  background-image: url(\"data:image/svg+xml;charset=utf8,%3Csvg id='squiggle-link' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:ev='http://www.w3.org/2001/xml-events' viewBox='0 0 20 4'%3E%3Cstyle type='text/css'%3E.squiggle{animation:shift .3s linear infinite;}@keyframes shift {from {transform:translateX(0);}to {transform:translateX(-20px);}}%3C/style%3E%3Cpath fill='none' stroke='%23453886' stroke-width='2' class='squiggle' d='M0,3.5 c 5,0,5,-3,10,-3 s 5,3,10,3 c 5,0,5,-3,10,-3 s 5,3,10,3'/%3E%3C/svg%3E\");\r\n");
      out.write("  background-position: bottom;\r\n");
      out.write("  background-repeat: repeat-x;\r\n");
      out.write("  background-size: 20%;\r\n");
      out.write("  border-bottom: 0;\r\n");
      out.write("  padding-bottom: .3em;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write(".reset:hover {\r\n");
      out.write("  background-image: url(\"data:image/svg+xml;charset=utf8,%3Csvg id='squiggle-link' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:ev='http://www.w3.org/2001/xml-events' viewBox='0 0 20 4'%3E%3Cstyle type='text/css'%3E.squiggle{animation:shift .3s linear infinite;}@keyframes shift {from {transform:translateX(0);}to {transform:translateX(-20px);}}%3C/style%3E%3Cpath fill='none' stroke='%23453886' stroke-width='2' class='squiggle' d='M0,3.5 c 5,0,5,-3,10,-3 s 5,3,10,3 c 5,0,5,-3,10,-3 s 5,3,10,3'/%3E%3C/svg%3E\");\r\n");
      out.write("  background-position: bottom;\r\n");
      out.write("  background-repeat: repeat-x;\r\n");
      out.write("  background-size: 20%;\r\n");
      out.write("  border-bottom: 0;\r\n");
      out.write("  padding-bottom: .3em;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\t<form action=\"trataEligeTema\" method=\"post\">\r\n");
      out.write("\t\t<div align=\"center\">\r\n");
      out.write("\t\t<h3>");
      out.print(t );
      out.write("</h3>\r\n");
      out.write("\t\t\t<table border=\"5\" width=\"25%\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<div align=\"center\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<h1 style=\"color: white\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<b><u>Elige tema</u></b>\r\n");
      out.write("\t\t\t\t\t\t\t</h1>\r\n");
      out.write("\t\t\t\t\t\t\t<table border=\"4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\" style=\"color: white\">Nombre:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\" style=\"color: white\"><input type=\"text\" name=\"nombre\" class=\"num\" size=\"35\" required></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\" style=\"color: white\">Apellidos:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\" style=\"color: white\"><input type=\"text\" name=\"apellidos\" class=\"num\" size=\"35\" required></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\" style=\"color: white\">Elige tema:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><select name=\"tema\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"Deportes\">Deportes</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"Politica\">Politica</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"Arte\">Arte</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\" style=\"color: white\">Comentarios:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\" style=\"color: white\"><textarea rows=\"5\" cols=\"35\" name=\"comentario\"></textarea></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"enviar\" class=\"submit\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tvalue=\"ENVIAR\" size=\"35\">\r\n");
      out.write("\t\t\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"reset\" name=\"borrar\" class=\"reset\" value=\"BORRAR\">\r\n");
      out.write("\t\t\t\t\t\t\t</p>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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