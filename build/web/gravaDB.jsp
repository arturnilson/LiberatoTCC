<%-- 
    Document   : gravaDB
    Created on : 30/04/2018, 15:25:17
    Author     : Artur
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    // buscando os parâmetros no request
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    String usuario = request.getParameter("usuario");
    String senha = request.getParameter("senha");
    String tipo = request.getParameter("tipo");
%>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>-->
<%
    // conectando
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/ProjetoTCC";
    Connection con = DriverManager.getConnection(url, "java2", "java2");

    // cria um preparedStatement
    String sql = "insert into cad_usuarios"
            + " (nome_usuario,email_usuario,usuario,senha_usuario,tipo_usuario)"
            + " values (?,?,?,?,?)";

    try {
        // prepared statement para inserção
        PreparedStatement stmt = con.prepareStatement(sql);

        // seta os valores
        stmt.setString(1, nome);
        stmt.setString(2, email);
        stmt.setString(3, usuario);
        stmt.setString(4, senha);
        stmt.setString(5, tipo);
        // executa
        stmt.execute();
        stmt.close();
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Usuário <%=usuario%> Cadastrado com Sucesso!</h2>
        <a href="javascript:history.back()" class="page-scroll">&lt;&lt; Voltar</a>
    </body>
</html>