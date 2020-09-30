package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.util.Calendar;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class listaFotoEvento_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=windows-1252");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");


    // conectando
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/ProjetoTCC";
    Connection con = DriverManager.getConnection(url, "java2", "java2");


      out.write("    \n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>FotoNA</title>\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <!-- Favicons\n");
      out.write("            ================================================== -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"img/apple-touch-icon.png\">\n");
      out.write("        <link rel=\"apple-touch-icon\" sizes=\"72x72\" href=\"img/apple-touch-icon-72x72.png\">\n");
      out.write("        <link rel=\"apple-touch-icon\" sizes=\"114x114\" href=\"img/apple-touch-icon-114x114.png\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\"  href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/font-awesome/css/font-awesome.css\">\n");
      out.write("\n");
      out.write("        <!-- Stylesheet\n");
      out.write("            ================================================== -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\"  href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/prettyPhoto.css\">\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300' rel='stylesheet' type='text/css'>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/modernizr.custom.js\"></script>\n");
      out.write("\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("              <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("              <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("            <![endif]-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Nav\n");
      out.write("            ==========================================-->\n");
      out.write("        <nav id=\"menu\" class=\"navbar navbar-fixed-top on\">\n");
      out.write("            <div class=\"container\"> \n");
      out.write("                <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\"> <span class=\"sr-only\">Toggle navigation</span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.html\">Foto<u>NA</u></a> </div>\n");
      out.write("\n");
      out.write("                <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                <div>\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li><a href=\"areaAdmin.jsp\" class=\"page-scroll\">&lt;&lt; Voltar</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <div class=\"nav navbar-nav navbar-right\" id=\"navcli\">\n");
      out.write("                        <h4>Lista de Clientes</h4>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-collapse --> \n");
      out.write("            </div>\n");
      out.write("            <!-- /.container-fluid --> \n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <div id=\"works-section\">\n");
      out.write("            <div class=\"container\"> <!-- Container -->\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <h4>Informe o Evento: </h4> \n");
      out.write("                    <option value=\"\">Selecione o Evento</option>\n");
      out.write("                    <form class=\"form-horizontal\" name=\"Formulario\" action=\"alteraEvento.jsp\">\n");
      out.write("                    <select name=\"drop_evento\" >\n");
      out.write("                        <option value=\"\">Selecione o Evento</option>\n");
      out.write("                        ");
                            try {
                                java.sql.Statement statement = con.createStatement();
                                ResultSet resultados = statement.executeQuery("SELECT * FROM eventos");
                                while (resultados.next()) {
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(resultados.getString("id_evento"));
      out.write('"');
      out.write('>');
      out.print(resultados.getString("nome_evento"));
      out.write("</option>\n");
      out.write("\n");
      out.write("                        ");
}
                            } catch (SQLException e) {
                                throw new RuntimeException(e);
                            }
                        
                        
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                        \n");
      out.write("                <input class=\"\" type=\"button\" value=\"Confirmar Evento\" onclick=\"Formulario.submit();\n");
      out.write("                                    Formulario.reset()\" />\n");
      out.write("                    </form>\n");
      out.write("                    <hr>  \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("                    \n");
      out.write("\n");
      out.write("        ");

            String event = request.getParameter("atualizaEvento");
            String imagem;
            String id_foto;
            String usuario;
            String nome_evento;
            
            try {

//                PreparedStatement stmt = con.prepareStatement("select * from fotos where id_evento=?");
                
                PreparedStatement stmt = con.prepareStatement("select f.*, c.nome_usuario from fotos f, cad_usuarios c where f.id_usuario = c.id_usuario and id_evento=?");
                
                //seta valores
                stmt.setString(1, event);

                ResultSet resultados = stmt.executeQuery();
                
                
                PreparedStatement stmt2 = con.prepareStatement("select nome_evento from eventos where id_evento=?");
                
                //seta valores
                stmt2.setString(1, event);

                ResultSet resultados2 = stmt2.executeQuery();
                
                
                
                while(resultados2.next()){
                    nome_evento = resultados2.getString("nome_evento");
                
                    
        
      out.write("\n");
      out.write("        \n");
      out.write("        <h2 align=\"center\"><b>Evento -</b> ");
      out.print(nome_evento);
      out.write("</h2><br>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("        <table align=\"center\">\n");
      out.write("            <tr>\n");
      out.write("                ");
 while (resultados.next()) {
                        imagem = resultados.getString("nome_foto");
                        id_foto = resultados.getString("id_foto");
                        usuario = resultados.getString("nome_usuario");
                        
                
      out.write("\n");
      out.write("\n");
      out.write("                <td><h3 align=\"center\"><b>Nome do Arquivo:</b> ");
      out.print(imagem);
      out.write("</h3><img src=\"imagens/");
      out.print(imagem);
      out.write("\" align=\"center\" width=\"550px\" class=\"img-responsive\">\n");
      out.write("                    <h3 align=\"center\"><b>Usuário:</b> ");
      out.print(usuario);
      out.write("</h3>\n");
      out.write("                    <br><br>\n");
      out.write("            </tr>  \n");
      out.write("\n");
      out.write("            ");

                    }
                 
                    resultados.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("\n");
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
