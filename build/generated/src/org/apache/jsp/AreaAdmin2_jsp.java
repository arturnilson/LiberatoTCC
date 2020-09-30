package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;

public final class AreaAdmin2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("\n");
     // conectando
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/ProjetoTCC";
    Connection con = DriverManager.getConnection(url, "java2", "java2");

      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <title>FotoNA</title>\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Bootstrap -->\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\"  href=\"css/bootstrap.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/font-awesome/css/font-awesome.css\">\n");
      out.write("\n");
      out.write("    <!-- Stylesheet\n");
      out.write("        ================================================== -->\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\"  href=\"css/style.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/prettyPhoto.css\">\n");
      out.write("    <script type=\"text/javascript\" src=\"js/modernizr.custom.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        <!-- Nav\n");
      out.write("            ==========================================-->\n");
      out.write("        <nav id=\"menu\" class=\"navbar navbar-fixed-top on\">\n");
      out.write("            <div class=\"container\"> \n");
      out.write("                <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\"> <span class=\"sr-only\">Toggle navigation</span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.html\">Foto<u>NA</u></a> \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                <div>\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li><a href=\"cadastro.jsp\" class=\"page-scroll\">Novo Usuário</a></li>\n");
      out.write("                        <li><a href=\"listaClientes.jsp\" class=\"page-scroll\">Editar Usuário</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <div class=\"nav navbar-nav navbar-right\" id=\"navcli\">\n");
      out.write("                        <h4>Área do Administrador</h4>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-collapse --> \n");
      out.write("            </div>\n");
      out.write("            <!-- /.container-fluid --> \n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <!-- Portfolio Section -->\n");
      out.write("        <div id=\"works-section\">\n");
      out.write("            <div class=\"container\"> <!-- Container -->\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <h4>Informe o Usuário: </h4> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <form enctype=\"multipart/form-data\" action=\"upload_1.jsp\" method=\"POST\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <select name=\"drop_usuario\" >\n");
      out.write("                            <option value=\"\">Selecione o usuario</option>\n");
      out.write("                            ");

                                try {
                                    java.sql.Statement statement = con.createStatement();
                                    ResultSet resultados = statement.executeQuery("SELECT * FROM cad_usuarios where tipo_usuario<>'2'");
                                    while (resultados.next()) {
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(resultados.getString("id_usuario"));
      out.write('"');
      out.write('>');
      out.print(resultados.getString("usuario"));
      out.write("</option>\n");
      out.write("\n");
      out.write("                            ");
}
                                } catch (SQLException e) {
                                    throw new RuntimeException(e);
                                }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <h4>Informe o Evento</h4>\n");
      out.write("                        <select name=\"drop_evento\" >\n");
      out.write("                            <option value=\"\">Selecione o Evento</option>\n");
      out.write("                            ");

                                try {
                                    java.sql.Statement statement = con.createStatement();
                                    ResultSet resultados = statement.executeQuery("SELECT * FROM eventos");
                                    while (resultados.next()) {
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(resultados.getString("id_evento"));
      out.write('"');
      out.write('>');
      out.print(resultados.getString("nome_evento"));
      out.write("</option>\n");
      out.write("\n");
      out.write("                            ");
}
                                } catch (SQLException e) {
                                    throw new RuntimeException(e);
                                }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                        <hr>\n");
      out.write("\n");
      out.write("                        <br><br>\n");
      out.write("                        <h4>Adicionar Imagens</h4>\n");
      out.write("\n");
      out.write("                        <!--<form enctype=\"multipart/form-data\" action=\"upload2.jsp\" method=\"POST\">-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <input name=\"arquivo\" type=\"file\" id=\"arquivo\">\n");
      out.write("                        <input type=\"submit\" value=\"Salvar\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> \n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.1.11.1.js\"></script> \n");
      out.write("\n");
      out.write("        <!-- Javascripts\n");
      out.write("            ================================================== --> \n");
      out.write("        <!--<script type=\"text/javascript\" src=\"js/main.js\"></script>-->\n");
      out.write("    </body>\n");
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
