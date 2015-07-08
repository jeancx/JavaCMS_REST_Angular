<%-- 
    Document   : login
    Created on : 10/05/2015, 20:51:39
    Author     : Jean
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="url" scope="session" value="${'http://localhost:8080/JavaCMS/public'}"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>CMS Instituiçional - Administração</title>

    <!-- BootStrap -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- BootStrap Optional theme -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <!-- MetisMenu CSS -->
    <link href="//cdnjs.cloudflare.com/ajax/libs/metisMenu/2.0.2/metisMenu.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <!-- Style CSS -->
    <link href="<c:out value="${url}"/>/css/backend.login.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="login-body">

<!-- #wrapper -->
<div id="wrapper">
	
	<div id="title">
		<span class="title">
			CMS Institucional
		</span>
	</div>

    <!-- Conteúdo das Paginas -->
	<div id="login">
		<div class="login-box">
			<form method="POST" action="">
				<div class="row">
					<div class="col-md-12">
						<h3 class="text-center">
							Autenticação
						</h3>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<label for="email">Email</label>
							<div class="input-group">
								<div class="input-group-addon"><i class="fa fa-envelope"></i></div>
								<input type="text" name="email" class="form-control">
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<label for="password">Senha</label>
							<div class="input-group">
								<div class="input-group-addon"><i class="fa fa-lock" style="width:14px"></i></div>
								<input type="password" name="password" class="form-control">
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<button class="btn btn-primary btn-block">
							Entrar
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
    <!-- /.Conteúdo das Paginas -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<!-- BootStrap -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>

</html>
