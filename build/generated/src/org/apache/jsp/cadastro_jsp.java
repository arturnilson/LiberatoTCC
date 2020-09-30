package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cadastro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                    <div class=\"nav navbar-nav navbar-right\" id=\"navcli\">\n");
      out.write("                        <h4>Cadastro de Clientes</h4>\n");
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
      out.write("                <div class=\"section-title\">\n");
      out.write("                    <h2>Cadastrar Cliente</h2>\n");
      out.write("                    <hr>\n");
      out.write("                    <!--                    <div class=\"clearfix\"></div>-->\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"container\">\n");
      out.write("\n");
      out.write("                    <form class=\"form-horizontal\" name=\"Formulario\" action=\"gravaDB.jsp\">\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-sm-2 control-label\">Nome:</label> \n");
      out.write("                            <div class=\"col-sm-8\">\n");
      out.write("                                <input class=\"form-control\" type=\"text\" name=\"nome\" placeholder=\"Digite o Nome Completo\"/><br>   \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class =\"col-sm-2 control-label\">E-mail:</label>\n");
      out.write("                            <div class=\"col-sm-8\">\n");
      out.write("                                <input class=\"form-control\" type=\"text\" name=\"email\" placeholder=\"Digite o E-mail\"/><br>  \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class =\"col-sm-2 control-label\">Usuário:</label>\n");
      out.write("                            <div class=\"col-sm-8\">\n");
      out.write("                                <input class=\"form-control\" type=\"text\" name=\"usuario\" placeholder=\"Digite o Usuário\"/><br>  \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class =\"col-sm-2 control-label\">Senha:</label>\n");
      out.write("                            <div class=\"col-sm-8\">\n");
      out.write("                                <input class=\"form-control\" type=\"password\" name=\"senha\" placeholder=\"Digite a Senha\"/><br>  \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class =\"col-sm-2 control-label\">Tipo de Usuário:</label>\n");
      out.write("                            <div class=\"col-sm-8\">\n");
      out.write("                                <select name=\"tipo\">\n");
      out.write("                                    <option value=\"1\">Comum</option>\n");
      out.write("                                    <option value=\"2\">Administrador</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <br><br>\n");
      out.write("                        <div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("                            <input class=\"btn-success\" type=\"button\" value=\"Gravar\" onclick=\"Formulario.submit();\n");
      out.write("                                    Formulario.reset()\"/>\n");
      out.write("                            <input class=\"btn-danger\" type=\"reset\" value=\"Limpar\" ><br>\n");
      out.write("                            <a href=\"listaClientes.jsp\"><h3>Clientes Cadastrados</h3></a>\n");
      out.write("\n");
      out.write("                            <!--</form>-->\n");
      out.write("                        </div>\n");
      out.write("                        <br><br><br>\n");
      out.write("                    </form>\n");
      out.write("                    <br>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--        <div id=\"footer\">\n");
      out.write("                      <div class=\"container\">\n");
      out.write("                        \n");
      out.write("                      </div>\n");
      out.write("                </div>-->\n");
      out.write("\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> \n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.1.11.1.js\"></script> \n");
      out.write("        <!-- Include all compiled plugins (below), or include individual files as needed --> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/bootstrap.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/SmoothScroll.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.prettyPhoto.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.isotope.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/jqBootstrapValidation.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/contact_me.js\"></script> \n");
      out.write("\n");
      out.write("        <!-- Javascripts\n");
      out.write("            ================================================== --> \n");
      out.write("        <script type=\"text/javascript\" src=\"js/main.js\"></script>\n");
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
