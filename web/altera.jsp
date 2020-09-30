<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Calendar"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    // buscando os parâmetros no request
    int id = Integer.parseInt(request.getParameter("id_usuario"));
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    String usuario = request.getParameter("usuario");
    String senha = request.getParameter("senha");

    // conectando
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/ProjetoTCC";
    Connection con = DriverManager.getConnection(url, "java2", "java2");

    // cria um preparedStatement
    String sql = "update cad_usuarios"
            + " set usuario=?,nome_usuario=?,email_usuario=?,senha_usuario=?"
            + " where id_usuario=?";

    try {
        // prepared statement para inserção
        PreparedStatement stmt = con.prepareStatement(sql);

        // seta os valores
        stmt.setString(1, usuario);
        stmt.setString(2, nome);
        stmt.setString(3, email);
        stmt.setString(4, senha);
        stmt.setInt(5, id);
        // executa
        stmt.execute();
        stmt.close();
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
%>
<html>
    <head>

        <title>Usuários</title>
    </head>
    <body>
        <h1>Usuário <%=usuario%> Alterado com Sucesso! </h1>
        <br><br><br>
        <a href="listaBD.jsp">Voltar</a>
    </body>
</html>
