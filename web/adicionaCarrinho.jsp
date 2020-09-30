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
            int id = Integer.parseInt(request.getParameter("id_foto"));
            String descricao = request.getParameter("nome_foto");
            double preco = 15.00;
            boolean inclui = true;

            for (Item a : Item.carrinho) {
                if (a.getId() == id) {
                    a.setQtde(a.getQtde() + 1);
                    inclui = false;
                }
            }
            if (inclui) {
                Item a = new Item();
                a.setId(id);
                a.setDescricao(descricao);
                a.setPreco(preco);
                a.setQtde(1);
                Item.carrinho.add(a);
            }
            response.sendRedirect("mostraCarrinho.jsp");

        %>

</body>

</html>