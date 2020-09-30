<%-- 
    Document   : autentica
    Created on : 19/04/2018, 20:01:49
    Author     : Douglas
--%>

<%@page import="java.lang.Integer"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = request.getParameter("usuario"); // Pega o Login vindo do formulário
    String senha = request.getParameter("senha"); //Pega a senha vinda do formulário
    String nome = "";
    String id_usuario = "";

    // conectando
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/ProjetoTCC";
    Connection con = DriverManager.getConnection(url, "java2", "java2");
    // cria um preapared Statement

    try {

        PreparedStatement stmt = con.prepareStatement("select nome_usuario, id_usuario from cad_usuarios where  usuario=? and senha_usuario=?");
        //seta valores
        stmt.setString(1, usuario);
        stmt.setString(2, senha);

        //executa
        ResultSet resultado = stmt.executeQuery();
        if (resultado.next()) {
            nome = resultado.getString("nome_usuario");
            id_usuario = resultado.getString("id_usuario");
        }
        stmt.close();
        resultado.close();
        stmt.close();
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }

    if (!nome.isEmpty()) { //Caso login e senha estejam corretos...
        
        if (usuario.equals("admin") && senha.equals("admin")) {
            response.sendRedirect("areaAdmin.jsp");
        } else {
            session.setAttribute("nome", nome); //Grava a session com o Login
            session.setAttribute("id_usuario", id_usuario);

            response.sendRedirect("areaCliente.jsp");
        }

    } else {
%>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <script>
        alert("Usuário ou Senha Inválido!");
        window.location = "index.html";
    </script>
</body>
</html>

<% }%>
<%session.setMaxInactiveInterval(600);%>