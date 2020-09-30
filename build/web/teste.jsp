<%-- 
    Document   : teste
    Created on : 22/05/2018, 00:31:07
    Author     : Artur
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%     // conectando
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/ProjetoTCC";
            Connection con = DriverManager.getConnection(url, "java2", "java2");
        %>
        <title>JSP Page</title>
    </head>
    <body>
        <nav id="menu" class="navbar navbar-fixed-top on">
            <div class="container"> 
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    <a class="navbar-brand" href="index.html">Foto<u>NA</u></a> 
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div>
                    <ul class="nav navbar-nav">
                        <li><a href="cadastro.jsp" class="page-scroll">Novo Usuário</a></li>
                        <li><a href="listaClientes.jsp" class="page-scroll">Editar Usuário</a></li>
                    </ul>
                </div>
                <div>
                    <div class="nav navbar-nav navbar-right" id="navcli">
                        <h4>Área do Administrador</h4>
                    </div>
                </div>
                <!-- /.navbar-collapse --> 
            </div>
            <!-- /.container-fluid --> 
        </nav>

        <div id="works-section">
            <div class="container"> <!-- Container -->
                <div class="col-md-12">

                    <h4>Informe o Usuário: </h4> 
                    <form class="form-horizontal">
                        <select name="id" >
                            <option value="">Selecione o usuario</option>
                            <%
                                try {
                                    java.sql.Statement statement = con.createStatement();
                                    ResultSet resultados = statement.executeQuery("SELECT * FROM cad_usuarios where tipo_usuario<>'2'");
                                    while (resultados.next()) {%>
                            <option value="<%=resultados.getString("id_usuario")%>"><%=resultados.getString("usuario")%></option>

                            <%}
                                } catch (SQLException e) {
                                    throw new RuntimeException(e);
                                }
                            %>
                        </select>
                    </form>
                    <h4>Informe o Evento</h4>
                    <form class="form-horizontals">
                        <select name="id" >
                            <option value="">Selecione o Evento</option>
                            <%
                                try {
                                    java.sql.Statement statement = con.createStatement();
                                    ResultSet resultados = statement.executeQuery("SELECT * FROM eventos");
                                    while (resultados.next()) {%>
                            <option value="<%=resultados.getString("id_evento")%>"><%=resultados.getString("nome_evento")%></option>

                            <%}
                                } catch (SQLException e) {
                                    throw new RuntimeException(e);
                                }
                            %>
                        </select>
                    </form>
                    <hr>

                </div>
                <div id="works-section">
                    <br>
                    <h4>Adicionar Imagens</h4>

                    <form enctype="multipart/form-data" action="upload3.jsp" method="POST">
                        <input name="arquivo" type="file" id="arquivo">
                        <input type="submit" value="Salvar">
                    </form>
                </div>
            </div> 

        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
        <script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
        <!-- Include all compiled plugins (below), or include individual files as needed --> 

    </body>
</html>
