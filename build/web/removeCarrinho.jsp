<%-- 
    Document   : removeCarrinho
    Created on : 14/06/2018, 14:39:20
    Author     : Artur
--%>

<%@page import="br.com.liberato.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            int id = Integer.parseInt(request.getParameter("id"));

            for (Item a : Item.carrinho) {
                if (a.getId() == id) {

                    Item.carrinho.remove(a);
                    break;
                }

            }

            response.sendRedirect("mostraCarrinho.jsp");
        %>

    </body>
</html>
