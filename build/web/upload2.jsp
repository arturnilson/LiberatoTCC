<%-- 
    Document   : upload
    Created on : 21/11/2016, 20:44:31
    Author     : Marcio
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page language="java" import="org.apache.commons.fileupload.*, java.util.*, java.io.*" %>

<%
    int usuario = Integer.parseInt(request.getParameter("drop_usuario"));
    int evento = Integer.parseInt(request.getParameter("drop_evento"));


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

    }%>

