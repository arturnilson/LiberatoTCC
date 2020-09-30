package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import org.apache.commons.fileupload.*;
import java.util.*;
import java.io.*;

public final class upload3_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");

    int usuario = Integer.parseInt(request.getParameter("usuario_sel"));
    int evento = Integer.parseInt(request.getParameter("evento_sel"));

    //Conectando
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/ProjetoTCC";
    Connection con = DriverManager.getConnection(url, "java2", "java2");

    String pathTemp = getServletContext().getRealPath("tmp");
    String caminhoTemp = pathTemp.replace("\\", "/") + "/";
    String path1 = getServletContext().getContextPath();
    String path = getServletContext().getRealPath("imagens");
    String pasta = path.replace("\\", "/") + "/";

//    pasta = "C:/Users/Artur/Documents/NetBeansProjects/ProjetoTCC/web/imagens/";
    if (FileUpload.isMultipartContent(request)) {

        DiskFileUpload upload = new DiskFileUpload();
        upload.setRepositoryPath(caminhoTemp);

        try {
            List items = upload.parseRequest(request);
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();
                if (!item.isFormField()) {

                    String nome_arq = item.getName().toString();
                    String nomeArquivo = nome_arq.substring(nome_arq.lastIndexOf("\\") + 1);

                    out.write("nome do arquivo: " + nomeArquivo + "<br>");
                    out.write("Arquivo(s)<b> " + item.getName() + "</b> transferido(s)<br>");

                    File arquivo = new File(pasta + nomeArquivo);

                    item.write(arquivo);

                    String sql = "insert into fotos(id_usuario, nome_foto, id_evento) values (?,?,?)";
//                    String sql = "update fotos"
//                            + " set nome_foto=?"
//                            + " where id_foto=2";

                    try {
                        // prepared statement para inserção
                        PreparedStatement stmt = con.prepareStatement(sql);

                        // seta os valores
                        stmt.setInt(1, usuario);
                        stmt.setString(2, nomeArquivo);
                        stmt.setInt(3, evento);

                        // executa
                        stmt.execute();
                        stmt.close();
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        } catch (FileUploadException e) {
            out.write("Não foi possível efetivar o upload do arquivo - segue a causa do erro" + "<br>" + e.getMessage());
            e.printStackTrace();
        }
    }
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
