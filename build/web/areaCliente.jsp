<%-- 
    Document   : areaCliente
    Created on : 27/04/2018, 01:29:36
    Author     : Artur
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>FotoNA</title>

        <%     // conectando
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/ProjetoTCC";
            Connection con = DriverManager.getConnection(url, "java2", "java2");
        %>

        <%
            // Etapa 1: Obter o objeto Session
            session = request.getSession(true);

            // Etapa 2: Obter o valor de dados da sessão
            String nome = (String) session.getAttribute("nome");
            String id_user = (String) session.getAttribute("id_usuario");
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
        <link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/modernizr.custom.js"></script>

        <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
    </head>
    <body>
        <!-- Nav
            ==========================================-->
        <nav id="menu" class="navbar navbar-fixed-top on">
            <div class="container"> 
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    <a class="navbar-brand" href="logout.jsp">Foto<u>NA</u></a> </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div>
                    <div class="nav navbar-nav navbar-right" id="navcli">
                        <div class="navbar-header">
                            <h4>Área do Cliente - </h4> 
                        </div>
                        <div class="navbar-header">

                            <h4> &nbsp <%=nome%>  &nbsp &nbsp</h4>
                        </div>
                        <div class="navbar-header">
                            <a href="logout.jsp"><h5>Logout</h5></a>   
                        </div>
                    </div>
                </div>
                <!-- /.navbar-collapse --> 
            </div>
            <!-- /.container-fluid --> 
        </nav>

        <!-- Portfolio Section -->
        <div id="works-section">
            <div class="container"> <!-- Container -->
                <div class="section-title">
                    <h2>Fotos do Ensaio</h2>
                    <hr>
                    <BR>
                    <div class="clearfix"></div>

                    <%
                        String imagem;
                        String id_foto;

                        try {

                            PreparedStatement stmt = con.prepareStatement("select * from fotos where id_usuario=?");
                            //seta valores
                            stmt.setString(1, id_user);

                            ResultSet resultados = stmt.executeQuery();

                    %>
                    <table align="center">
                        <tr>
                            <% while (resultados.next()) {
                                    imagem = resultados.getString("nome_foto");
                                    id_foto = resultados.getString("id_foto");
                            %>
                            
                            <td><h3 align="center"><b>Nome do Arquivo:</b> <%=imagem%></h3><img src="imagens/<%=imagem%>" align="center" width="550px" class="img-responsive">
                                <h4 align="center">Adicionar ao Carrinho &nbsp<a href="adicionaCarrinho.jsp?id_foto=<%=resultados.getInt("id_foto")%>&nome_foto=<%=imagem%>"><img src="imagens/carrinhodecompras.png"></a></h4></td>
                        </tr>  
                        
                        <%
                                }
                                resultados.close();
                            } catch (SQLException e) {
                                throw new RuntimeException(e);
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>



        <!--        <div id="footer">
                      <div class="container">
                        
                      </div>
                </div>-->

        <!-- Javascripts
            ================================================== --> 
        <script type="text/javascript" src="js/main.js"></script>
    </body>
</html>