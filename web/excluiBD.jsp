<%-- 
    Document   : excluiBD
    Created on : 30/04/2018, 16:58:07
    Author     : Artur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <% int id = Integer.parseInt(request.getParameter("id"));%> 
        <script>
            if (confirm("Tem certeza que deseja excluir o Usuário? Esta ação irá excluir também as fotos do Usuário.")) {
                window.location = "exclui.jsp?id_usuario=<%=id%>";
            } else {
                window.location = "listaClientes.jsp";
            }
        </script>
    </body>
</html>
