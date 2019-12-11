/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.92
 * Generated at: 2019-12-04 11:51:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Compara;
import java.util.concurrent.TimeUnit;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"contenedorPadre\">\r\n");
      out.write("\t\t<h1>LUCES ESTADIO</h1>\r\n");
      out.write("\t\t<div class=\"contenedor\">\r\n");
      out.write("\t\t\t<div class=\"divForma\">\r\n");
      out.write("\t\t\t\t<svg>\r\n");
      out.write("<g>\r\n");

	//num filas y columnas
	int fil = 9, col = 9;
	//distancia entre filas y columnas
	int salto = 25;
	//separacion entre figuras
	int px = 25, py = 25;

	for (int y = 0; y < fil; y++, py += salto) {
		px = 25;
		for (int x = 0; x < col; x++, px += salto) {
			if (Compara.focosX(x, y)) {

      out.write("\r\n");
      out.write("\t\t<rect x=\"");
      out.print(px - 9);
      out.write("\" y=\"");
      out.print(py - 4.5);
      out.write("\" class=\"focosX\" name=\"focos\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										}
												if (Compara.focosY(x, y)) {
									
      out.write("\r\n");
      out.write("\t\t<rect x=\"");
      out.print(px - 4.5);
      out.write("\" y=\"");
      out.print(py - 9);
      out.write("\" class=\"focosY\" name=\"focos\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										}
												if (Compara.circulos(x, y)) {
									
      out.write("\r\n");
      out.write("\t\t<circle cx=\"");
      out.print(px);
      out.write("\" cy=\"");
      out.print(py);
      out.write("\" name=\"asientos\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										}
												if (Compara.rectangulosX(x, y) && !(x == 4 && y == 4)) {
									
      out.write("\r\n");
      out.write("\t\t<ellipse cx=\"");
      out.print(px);
      out.write("\" cy=\"");
      out.print(py);
      out.write("\" class=\"salidasX\" name=\"salidas\" />\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t");

					}
							if (Compara.rectangulosY(x, y) && !(x == 4 && y == 4)) {
				
      out.write("\r\n");
      out.write("\t\t<ellipse cx=\"");
      out.print(px);
      out.write("\" cy=\"");
      out.print(py);
      out.write("\" class=\"salidasY\" name=\"salidas\" />\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t");

							}
								}
							}
						
      out.write("\r\n");
      out.write("</g>\r\n");
      out.write("</svg>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"divTabla\">\r\n");
      out.write("\t\t\t\t<form action=\"index.jsp\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"submit\" name=\"accion\" value=\"1\">encender\r\n");
      out.write("\t\t\t\t\t\t\t\tluces perimetrales</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"submit\" name=\"accion\" value=\"2\">apagar\r\n");
      out.write("\t\t\t\t\t\t\t\tluces perimetrales</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"submit\" name=\"accion\" value=\"3\">regular\r\n");
      out.write("\t\t\t\t\t\t\t\tluces perimetrales</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"submit\" name=\"accion\" value=\"4\">encender\r\n");
      out.write("\t\t\t\t\t\t\t\tluces emergencia</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"submit\" name=\"accion\" value=\"5\">apagar\r\n");
      out.write("\t\t\t\t\t\t\t\tluces emergencia</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"submit\" name=\"accion\" value=\"6\">parpadeo\r\n");
      out.write("\t\t\t\t\t\t\t\tluces emergencia</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"submit\" name=\"accion\" value=\"7\">encender\r\n");
      out.write("\t\t\t\t\t\t\t\tluces salida</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"submit\" name=\"accion\" value=\"8\">apagar\r\n");
      out.write("\t\t\t\t\t\t\t\tluces salida</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
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
