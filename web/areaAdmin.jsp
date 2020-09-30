<%-- 
    Document   : areaAdmin
    Created on : 27/04/2018, 01:31:56
    Author     : Artur
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%     // conectando
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/ProjetoTCC";
    Connection con = DriverManager.getConnection(url, "java2", "java2");
%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FotoNA</title>
    <meta name="description" content="">
    <meta name="author" content="">



    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

    <!-- Stylesheet
        ================================================== -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/prettyPhoto.css">
    <script type="text/javascript" src="js/modernizr.custom.js"></script>


</head>
<html>

<body>
    <!-- Nav
            ==========================================-->
    <nav id="menu" class="navbar navbar-fixed-top on">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span
                        class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                <a class="navbar-brand" href="index.html">Foto<u>NA</u></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div>
                <ul class="nav navbar-nav">
                    <li><a href="cadastro.jsp" class="page-scroll">Novo Usu�rio</a></li>
                    <li><a href="listaClientes.jsp" class="page-scroll">Lista de Usu�rios</a></li>
                    <li><a href="listaFotoEvento.jsp" class="page-scroll">Consulta de Fotos por Evento</a></li>
                </ul>
                <div class="nav navbar-nav navbar-right" id="navcli">
                    <div class="navbar-header">
                        <h4>�rea do Administrador &nbsp&nbsp</h4>
                    </div>
                    <div class="navbar-header">
                        <a href="logout.jsp" class="page-scroll">
                            <h5>Logout</h5>
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Portfolio Section -->
    <div id="works-section">
        <div class="container">
            <!-- Container -->
            <div class="col-md-12">
                <h4>Informe o Usu�rio: </h4>




                <form enctype="multipart/form-data" action="upload.jsp" method="POST">







                    <select name="drop_usuario">
                        <option value="">Selecione o Usuario</option>
                        <%
                            try {
                                java.sql.Statement statement = con.createStatement();
                                ResultSet resultados = statement.executeQuery("SELECT * FROM cad_usuarios where tipo_usuario<>'2'");
                                while (resultados.next()) {%>
                        <option value="<%=resultados.getString("id_usuario")%>"><%=resultados.getString("usuario")%>
                        </option>

                        <%}
                            } catch (SQLException e) {
                                throw new RuntimeException(e);
                            }
                        %>
                    </select>




                    <h4>Informe o Evento</h4>
                    <select name="drop_evento">
                        <option value="">Selecione o Evento</option>
                        <%
                            try {
                                java.sql.Statement statement = con.createStatement();
                                ResultSet resultados = statement.executeQuery("SELECT * FROM eventos");
                                while (resultados.next()) {%>
                        <option value="<%=resultados.getString("id_evento")%>"><%=resultados.getString("nome_evento")%>
                        </option>

                        <%}
                            } catch (SQLException e) {
                                throw new RuntimeException(e);
                            }
                        %>
                    </select>
                    <hr>

                    <br><br>
                    <h4>Adicionar Imagens</h4>








                    <input name="arquivo" type="file" id="arquivo">
                    <input type="submit" value="Salvar">
                </form>
            </div>
        </div>
    </div>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.1.11.1.js"></script>

    <!-- Javascripts
        ================================================== -->
    <!--<script type="text/javascript" src="js/main.js"></script>-->
</body>

</html>