<%-- 
    Document   : alteraEvento
    Created on : 21/06/2018, 23:56:24
    Author     : Artur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String atualizaEvento = request.getParameter("drop_evento");

    
    response.sendRedirect("listaFotoEvento.jsp?atualizaEvento=" + atualizaEvento);
    %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
