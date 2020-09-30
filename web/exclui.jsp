<%-- 
    Document   : exclui
    Created on : 30/04/2018, 17:00:12
    Author     : Artur
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            // buscando os parâmetros no request
            int id = Integer.parseInt(request.getParameter("id_usuario"));
            // conectando
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/ProjetoTCC";
            Connection con = DriverManager.getConnection(url, "java2", "java2");

            try {
//                PreparedStatement ps = con.prepareStatement("delete from cad_usuarios where id_usuario=?");
//                PreparedStatement ps = con.prepareStatement("delete from fotos, cad_usuarios where fotos.id_usuario="+id+" and cad_usuarios.id_usuario=?");
                PreparedStatement ps = con.prepareStatement("delete from fotos where id_usuario=?");
                ps.setInt(1, id);
                ps.execute();
                
                PreparedStatement ps2 = con.prepareStatement("delete from cad_usuarios where id_usuario=?"); 
                ps2.setInt(1, id);
                ps2.execute();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            response.sendRedirect("listaClientes.jsp");

        %>

    </body>
</html>
