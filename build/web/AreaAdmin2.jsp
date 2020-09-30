<%-- 
    Document   : areaAdmin
    Created on : 27/04/2018, 01:31:56
    Author     : Artur
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FotoNA</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <%     // conectando
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String url = "jdbc:derby://localhost:1527/ProjetoTCC";
        Connection con = DriverManager.getConnection(url, "java2", "java2");
    %>


    <!-- Favicons
        ================================================== -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

    <!-- Stylesheet
        ================================================== -->
    <link rel="stylesheet" type="text/css"  href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/prettyPhoto.css">
    <!--        <link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
            <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300' rel='stylesheet' type='text/css'>-->
    <script type="text/javascript" src="js/modernizr.custom.js"></script>

    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<html>
    <body>
        <!-- Nav
            ==========================================-->
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

        <!-- Portfolio Section -->
        <div id="works-section">
            <div class="container"> <!-- Container -->
                <div class="col-md-12">
                    <h4>Informe o Usuário: </h4> 
                    <!--<form class="form-horizontal">-->
                    <form enctype="multipart/form-data" action="upload2.jsp" method="POST">

                        <select name="drop_usuario" >
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
                        <!--</form>-->
                        <h4>Informe o Evento</h4>
                        <!--                        <form class="form-horizontals">-->
                        <select name="drop_evento" >
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
                        <!--</form>-->
                        <hr>

                        </div>
                        <!--                <div id="works-section">-->
                        <br>
                        <h4>Adicionar Imagens</h4>

                        <form enctype="multipart/form-data" action="upload2.jsp" method="POST">

                            <input name="arquivo" type="file" id="arquivo">
                            <input type="submit" value="Salvar">
                        </form>
                        <!--</div>-->
                </div>
            </div>



            <!--        <div id="footer">
                          <div class="container">
                            
                          </div>
                    </div>-->

            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
            <script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
            <!-- Include all compiled plugins (below), or include individual files as needed --> 
            <!--        <script type="text/javascript" src="js/bootstrap.js"></script> 
                    <script type="text/javascript" src="js/SmoothScroll.js"></script> 
                    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script> 
                    <script type="text/javascript" src="js/jquery.isotope.js"></script> 
                    <script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
                    <script type="text/javascript" src="js/contact_me.js"></script> -->

            <!-- Javascripts
                ================================================== --> 
            <!--<script type="text/javascript" src="js/main.js"></script>-->
    </body>
</html>