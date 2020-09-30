<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<%

    // conectando
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/ProjetoTCC";
    Connection con = DriverManager.getConnection(url, "java2", "java2");

%>    
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>FotoNA</title>
        <meta name="description" content="">
        <meta name="author" content="">

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
                    <a class="navbar-brand" href="index.html">Foto<u>NA</u></a> </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div>
                    <ul class="nav navbar-nav">
                        <li><a href="areaAdmin.jsp" class="page-scroll">&lt;&lt; Voltar</a></li>
                    </ul>
                </div>
                <div>
                    <div class="nav navbar-nav navbar-right" id="navcli">
                        <h4>Lista de Clientes</h4>
                    </div>
                </div>
                <!-- /.navbar-collapse --> 
            </div>
            <!-- /.container-fluid --> 
        </nav>

        <div id="works-section">
            <div class="container"> <!-- Container -->
                <div class="col-md-12">
                    <h4>Informe o Evento: </h4> 
                    <option value="">Selecione o Evento</option>
                    <form class="form-horizontal" name="Formulario" action="alteraEvento.jsp">
                    <select name="drop_evento" >
                        <option value="">Selecione o Evento</option>
                        <%                            try {
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
                        
                <input class="" type="button" value="Confirmar Evento" onclick="Formulario.submit();
                                    Formulario.reset()" />
                    </form>
                    <hr>  
                </div>
            </div>
        </div>
                    

        <%
            String event = request.getParameter("atualizaEvento");
            String imagem;
            String id_foto;
            String usuario;
            String nome_evento;
            
            try {

//                PreparedStatement stmt = con.prepareStatement("select * from fotos where id_evento=?");
                
                PreparedStatement stmt = con.prepareStatement("select f.*, c.nome_usuario from fotos f, cad_usuarios c where f.id_usuario = c.id_usuario and id_evento=?");
                
                //seta valores
                stmt.setString(1, event);

                ResultSet resultados = stmt.executeQuery();
                
                
                PreparedStatement stmt2 = con.prepareStatement("select nome_evento from eventos where id_evento=?");
                
                //seta valores
                stmt2.setString(1, event);

                ResultSet resultados2 = stmt2.executeQuery();
                
                
                
                while(resultados2.next()){
                    nome_evento = resultados2.getString("nome_evento");
                
                    
        %>
        
        <h2 align="center"><b>Evento -</b> <%=nome_evento%></h2><br>
        
        <% } %>
        <table align="center">
            <tr>
                <% while (resultados.next()) {
                        imagem = resultados.getString("nome_foto");
                        id_foto = resultados.getString("id_foto");
                        usuario = resultados.getString("nome_usuario");
                        
                %>

                <td><h3 align="center"><b>Nome do Arquivo:</b> <%=imagem%></h3><img src="imagens/<%=imagem%>" align="center" width="550px" class="img-responsive">
                    <h3 align="center"><b>Usuário:</b> <%=usuario%></h3>
                    <br><br>
            </tr>  

            <%
                    }
                 
                    resultados.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            
            %>
        </table>


    </body>
</html>