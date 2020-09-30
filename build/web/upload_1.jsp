<%-- 
    Document   : upload
    Created on : 21/11/2016, 20:44:31
    Author     : Marcio
--%>
<%@page import="javax.mail.Session"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page language="java" import="org.apache.commons.fileupload.*, java.util.*, java.io.*" %>


<%
    String pathTemp = getServletContext().getRealPath("tmp");
    String caminhoTemp = pathTemp.replace("\\", "/") + "/";
    String path1 = getServletContext().getContextPath();
    String path = getServletContext().getRealPath("imagens");
    String pasta = path.replace("\\", "/") + "/";

//    pasta = "C:/Users/Artur/Documents/NetBeansProjects/UpLoad/web/imagens/";
    if (FileUpload.isMultipartContent(request)) {
        DiskFileUpload upload = new DiskFileUpload();
        upload.setRepositoryPath(caminhoTemp);
        String usuario = request.getParameter("drop_usuario");
        String evento = request.getParameter("drop_evento");
        String nome = " ";
        String nomeArquivo = " ";
        try {
            List items = upload.parseRequest(request);
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();
                if (!item.isFormField()) {

                    nome = item.getName().toString();
                    nomeArquivo = nome.substring(nome.lastIndexOf("\\") + 1);
                    out.write("nome do arquivo: " + nomeArquivo + "<br>");
                    out.write("Arquivo(s)<b> " + item.getName() + "</b> transferido(s)<br>");

                    File arquivo = new File(pasta + nomeArquivo);
                    item.write(arquivo);
                }
                if (item.isFormField()) {
                    if (item.getFieldName().equals("drop_usuario")) {
                        usuario = item.getString();
                    }

                    if (item.getFieldName().equals("drop_evento")) {
                        evento = item.getString();
                    }
                }

            }
        } catch (FileUploadException e) {
            out.write("Não foi possível efetivar o upload do arquivo - segue a causa do erro" + "<br>" + e.getMessage());
            e.printStackTrace();
        }
        response.sendRedirect("gravaFoto.jsp?usuario=" + usuario + " &nomeArquivo=" + nomeArquivo + " &evento=" + evento);

}

%>

