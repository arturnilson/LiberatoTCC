<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=WINDOWS-1252">
        <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <sql:setDataSource var="ds"
                           driver="org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/ProjetoTCC"
                           user="java2"
                           password="java2"
                           scope="session"/>  
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Pesquisa o usuario -->
        <sql:query dataSource="${ds}" var="resultado">
            select nome_usuario, id_usuario from cad_usuarios where  usuario=? and senha_usuario=?
            <sql:param value="${param.usuario}"/>
            <sql:param value="${param.senha}"/>
        </sql:query>

        <!-- Percorre o resultset e grava o nome do usuario na sessão -->    
        <c:forEach items="${resultado.rows}" var="login">
            <c:set var="usuario_nome" value="${login.nome_usuario}" scope="session"/>
            <c:set var="usuario_id" value="${login.id_usuario}" scope="session"/>
        </c:forEach>   

        <c:choose>    
            <c:when test="${empty usuario_nome}">
                <script>
                    alert("Usuário e/ou senha inválidos");
                    window.location = "index.html";
                </script>
            </c:when>
            <c:when test="${usuario=='admin'}">
                <script>
                    window.location = "areaAdmin.jsp";
                </script>
            </c:when>
            <c:otherwise>
                <script>
                    session.setAttribute("nome_usuario", nome_usuario);
                    session.setAttribute("id_usuario", id_usuario);
//                    response.sendRedirect("areaCliente.jsp?usuario_nome=" + usuario_nome + "&usuario_id=" + usuario_id);
                    response.sendRedirect("areaCliente.jsp");
                </script>
            </c:otherwise>
        </c:choose>
    </body>
</html>
<%session.setMaxInactiveInterval(600);%>