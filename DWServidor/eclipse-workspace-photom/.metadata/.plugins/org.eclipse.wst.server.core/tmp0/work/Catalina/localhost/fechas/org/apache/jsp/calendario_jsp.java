/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.92
 * Generated at: 2019-10-16 08:33:20 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.*;

public final class calendario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

													//ojo a el tipo es !
public static int[] sacaCalendar(Calendar f){
		int[] fechaHora = new int[6];
		fechaHora[0] = f.get(Calendar.YEAR);
		fechaHora[1] = f.get(Calendar.MONTH)+1; // el mes es un array de 0 a 11 por eso se debe arreglar
		fechaHora[2] = f.get(Calendar.DAY_OF_MONTH);
		fechaHora[3] = f.get(Calendar.HOUR_OF_DAY);
		fechaHora[4] = f.get(Calendar.MINUTE);
		fechaHora[5] = f.get(Calendar.SECOND);
		return fechaHora;
}

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
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write('\r');
      out.write('\n');

	Calendar f1 = Calendar.getInstance();
	int[] actual = sacaCalendar(f1);

      out.write("\r\n");
      out.write("<p>Fecha actual</p>\r\n");
      out.write("<table border=\"1\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>Año</td>\r\n");
      out.write("\t\t<td>Mes</td>\r\n");
      out.write("\t\t<td>Dia</td>\r\n");
      out.write("\t\t<td>Hora</td>\r\n");
      out.write("\t\t<td>Minutos</td>\r\n");
      out.write("\t\t<td>Segundos</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t");
  
			for(int i=0;i<actual.length;i++){
		
      out.write("\r\n");
      out.write("\t\t\t<td>");
      out.print(actual[i]);
      out.write("</td>\t\r\n");
      out.write("\t\t");

		}
		
		//obtener nueva fecha a partir de f1
		
		f1.add(Calendar.YEAR, -1);
		f1.add(Calendar.MINUTE, 40);
		f1.add(Calendar.DAY_OF_MONTH, 10);
		
		Calendar f2=f1;
		actual = sacaCalendar(f2);
		
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<p>Fecha actual</p>\r\n");
      out.write("<table border=\"1\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>Año</td>\r\n");
      out.write("\t\t<td>Mes</td>\r\n");
      out.write("\t\t<td>Dia</td>\r\n");
      out.write("\t\t<td>Hora</td>\r\n");
      out.write("\t\t<td>Minutos</td>\r\n");
      out.write("\t\t<td>Segundos</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t");
  
			for(int i=0;i<actual.length;i++){
		
      out.write("\r\n");
      out.write("\t\t\t<td>");
      out.print(actual[i]);
      out.write("</td>\t\r\n");
      out.write("\t\t");

		}
		
		//obtener una nueva fecha usando el metodo SET
		
		//f1.set(2020, 11, 31, 24, 54);			//ojo al poner esta fecha fin de noviembre se cambia ya que considera que es el mes diciembre 11+1
		f1.set(2019,9,20,10,70,54);
		actual = sacaCalendar(f1);				//tener cuidado al poner el mes
		
      out.write("\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<p>Fecha seteando f1 f1.set(2019,9,20,10,70,54)</p>\r\n");
      out.write("<table border=\"1\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>Año</td>\r\n");
      out.write("\t\t<td>Mes</td>\r\n");
      out.write("\t\t<td>Dia</td>\r\n");
      out.write("\t\t<td>Hora</td>\r\n");
      out.write("\t\t<td>Minutos</td>\r\n");
      out.write("\t\t<td>Segundos</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t");
  
			for(int i=0;i<actual.length;i++){
		
      out.write("\r\n");
      out.write("\t\t\t<td>");
      out.print(actual[i]);
      out.write("</td>\t\r\n");
      out.write("\t\t");

		}
		
      out.write("\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
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
