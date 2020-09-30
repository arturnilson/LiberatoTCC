
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
         <sql:setDataSource var="ds"
                           driver="org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/ProjetoTCC"
                           user="java2"
                           password="java2"
                           scope="session"/>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload da Fotos</title>
    </head>
    <body>
       
        <hr>
        <br><br>
    <sql:update dataSource="${ds}">
    insert into fotos(id_usuario,nome_foto,id_evento) values(?,?,?)
    <sql:param value="${param.usuario}"/>
     <sql:param value="${param.nomeArquivo}"/>
      <sql:param value="${param.evento}"/>
    </sql:update>
    
    <script>
        alert("Foto enviada com sucesso!");
        window.location="areaAdmin.jsp";
    </script>
    <%--<c:redirect url="areaAdmin.jsp"/>--%>
            
        
    </body>
</html>
