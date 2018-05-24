package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import model.Line;

public final class Line_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Draw Line</title>\n");
      out.write("        ");

            ArrayList<Line> lines = (ArrayList<Line>) request.getAttribute("lines");
        
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <canvas id=\"canvas\" width=\"1000px\" height=\"1000px\"/>\n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("            function Line(x1, y1,x2,y2)\n");
      out.write("            {\n");
      out.write("                this.x1 = x1;\n");
      out.write("                this.y1 = y1;\n");
      out.write("                this.x2=x2;\n");
      out.write("                this.y2=y2;\n");
      out.write("\n");
      out.write("                this.draw = function (ctx)\n");
      out.write("                {\n");
      out.write("                    ctx.beginPath();\n");
      out.write("                    ctx.moveTo(this.x1, this.y1);\n");
      out.write("                    ctx.lineTo(this.x2, this.y2);\n");
      out.write("                    ctx.stroke();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            var lines = [];\n");
      out.write("             function loadData()\n");
      out.write("            {\n");
      out.write("                ");

                    for(Line l : lines )
                    {
                    
                
      out.write("\n");
      out.write("                  lines.push(new Line(");
      out.print(l.getVertexA()[0]);
      out.write(')');
      out.write(',');
      out.print(l.getVertexA()[1]);
      out.write(',');
      out.print(l.getVertexB()[0]);
      out.write(',');
      out.print(l.getVertexB()[1]);
      out.write(");      \n");
      out.write("                ");
  }
      out.write(" \n");
      out.write("                var canvas =  document.getElementById(\"canvas\");    \n");
      out.write("                var ctx = canvas.getContext(\"2d\");\n");
      out.write("                    for(var i=0;i<lines.length;i++)\n");
      out.write("                    lines[i].draw(ctx);\n");
      out.write("            }\n");
      out.write("            loadData();\n");
      out.write("        </script>\n");
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
