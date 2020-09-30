<%-- 
    Document   : alteraBD
    Created on : 26/03/2018, 20:24:00
    Author     : Artur
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
                <%
            // buscando os parâmetros no request
            int id = Integer.parseInt(request.getParameter("id_usuario"));
            // conectando
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/ProjetoTCC";
            Connection con = DriverManager.getConnection(url, "java2", "java2");
            %>
<html>
    <head>
        <title>Alteração de Livro</title>
    </head>
    <body>

        <% try {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM cad_usuarios where id_usuario=?");
            ps.setInt(1, id);
            ResultSet resultados = ps.executeQuery();
            resultados.next();%>
        <br>
        <form name="Formulario" action="altera.jsp" method="POST">
            <input type="hidden" name="id" value="<%=id%>"/>
            Nome: <input type="text" name="nome" value="<%=resultados.getString("nome_usuario")%>"><br />
            Email: <input type="text" name="email" value="<%=resultados.getString("email_usuario")%>"><br />
            Usuário: <input type="text" name="usuario" value="<%=resultados.getString("usuario")%>"><br />
            Senha: <input type="text" name="senha" value="<%=resultados.getString("senha_usuario")%>"><br />
            <br><br>
            <input type="button" value="Gravar" onclick="Formulario.submit(); Formulario.reset();"/>
            <% 
            resultados.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        %>
        <br><br><br>
        </form>
    </body>
</html>
