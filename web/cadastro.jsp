<%-- 
    Document   : areaCliente
    Created on : 27/04/2018, 01:29:36
    Author     : Artur
--%>

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
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

    <!-- Stylesheet
            ================================================== -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
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
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span
                        class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                <a class="navbar-brand" href="index.html">Foto<u>NA</u></a> </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div>
                <ul class="nav navbar-nav">
                    <li><a href="areaAdmin.jsp" class="page-scroll">&lt;&lt; Voltar</a></li>
                </ul>
            </div>
            <div>
                <div class="nav navbar-nav navbar-right" id="navcli">
                    <h4>Cadastro de Clientes</h4>
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
            <div class="section-title">
                <h2>Cadastrar Cliente</h2>
                <hr>
                <!--                    <div class="clearfix"></div>-->
            </div>


            <div class="container">

                <form class="form-horizontal" name="Formulario" action="gravaDB.jsp">

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Nome:</label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" name="nome"
                                placeholder="Digite o Nome Completo" /><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">E-mail:</label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" name="email" placeholder="Digite o E-mail" /><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Usu�rio:</label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" name="usuario" placeholder="Digite o Usu�rio" /><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Senha:</label>
                        <div class="col-sm-8">
                            <input class="form-control" type="password" name="senha" placeholder="Digite a Senha" /><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Tipo de Usu�rio:</label>
                        <div class="col-sm-8">
                            <select name="tipo">
                                <option value="1">Comum</option>
                                <option value="2">Administrador</option>
                            </select>
                        </div>
                    </div>

                    <br><br>
                    <div class="col-sm-offset-2 col-sm-10">
                        <input class="btn-success" type="button" value="Gravar" onclick="Formulario.submit();
                                    Formulario.reset()" />
                        <input class="btn-danger" type="reset" value="Limpar"><br>
                        <a href="listaClientes.jsp">
                            <h3>Clientes Cadastrados</h3>
                        </a>

                        <!--</form>-->
                    </div>
                    <br><br><br>
                </form>
                <br>
            </div>
        </div>
    </div>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.1.11.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/SmoothScroll.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/jquery.isotope.js"></script>
    <script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
    <script type="text/javascript" src="js/contact_me.js"></script>

    <!-- Javascripts
            ================================================== -->
    <script type="text/javascript" src="js/main.js"></script>
</body>

</html>