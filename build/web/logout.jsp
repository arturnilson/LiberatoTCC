<%-- 
    Document   : logout
    Created on : 11/06/2018, 21:54:14
    Author     : Artur
--%>

<%@page import="br.com.liberato.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% session.invalidate();
response.sendRedirect("index.html");%>

<%Item.carrinho.removeAll(Item.carrinho);%>
