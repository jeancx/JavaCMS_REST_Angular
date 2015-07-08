<%-- 
    Document   : header
    Created on : 20/06/2015, 21:31:49
    Author     : HT
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="url" scope="session" value="${'http://localhost:8080/JavaCMS'}"/>

<!DOCTYPE html>
<html lang="pt-BR">
    
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>CMS Institucional - Administração</title>

    <!-- BootStrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- BootStrap Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <!-- MetisMenu CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/metisMenu/2.0.2/metisMenu.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <!-- Style CSS -->
    <link href="<c:out value="${url}"/>/public/css/backend.style.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- #wrapper -->
<div id="wrapper">

    <!-- Navegação Topo e Menu -->
    <nav class="navbar navbar-default navbar-inverse navbar-static-top" role="navigation" style="margin-bottom: 0">

        <!-- Menu Topo -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Compactar/Expandir Menu</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/JavaCMS/admin/painel">CMS Institucional</a>
        </div>

        <ul class="nav navbar-top-links navbar-right">

            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    Jean Carlos Farias
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="<c:out value="${url}"/>/admin/users/editar"><i class="fa fa-user fa-fw"></i> Editar Perfil</a>
                    </li>
                    <li><a href="<c:out value="${url}"/>/admin/config"><i class="fa fa-gear fa-fw"></i> Configurações</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="<c:out value="${url}"/>/sair"><i class="fa fa-sign-out fa-fw"></i> Sair</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- /Menu Topo -->


        <!-- Menu Principal -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="active">
                        <a href="<c:out value="${url}"/>/admin/painel" id="navPrimeiro" title="Painel"><i class="fa fa-dashboard fa-fw"></i> Painel</a>
                    </li>

                    <!-- Blog -->
                    <li>
                        <a href="#"><i class="fa fa-newspaper-o fa-fw"></i> Artigos<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<c:out value="${url}"/>/admin/artigos" title="Posts"><i class="fa fa-list fa-fw"></i> Listar Artigos</a>
                            </li>
                            <li>
                                <a href="<c:out value="${url}"/>/admin/artigos/novo"><i class="fa fa-plus fa-fw"></i> Postar Novo</a>
                            </li>
                        </ul>
                    </li>

                    <!-- Galerias -->
                    <li>
                        <a href="#"><i class="fa fa-photo fa-fw"></i> Galerias<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<c:out value="${url}"/>/admin/galerias"><i class="fa fa-list fa-fw"></i> Listar Galerias</a>
                            </li>
                            <li>
                                <a href="<c:out value="${url}"/>/admin/galerias/novo"><i class="fa fa-plus fa-fw"></i> Nova Galerias</a>
                            </li>
                        </ul>
                    </li>

                    <!-- Paginas -->
                    <li>
                        <a href="#"><i class="fa fa-file-text-o fa-fw"></i> Paginas<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<c:out value="${url}"/>/admin/paginas"><i class="fa fa-list fa-fw"></i> Listar Paginas</a>
                            </li>
                            <li>
                                <a href="<c:out value="${url}"/>/admin/paginas/novo"><i class="fa fa-plus fa-fw"></i> Nova Pagina</a>
                            </li>
                        </ul>
                    </li>

                    <!-- Menu -->
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> Menu<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<c:out value="${url}"/>/admin/menu"><i class="fa fa-list fa-fw"></i> Listar Menu</a>
                            </li>
                            <li>
                                <a href="<c:out value="${url}"/>/admin/menu/novo"><i class="fa fa-plus fa-fw"></i> Novo Menu</a>
                            </li>
                        </ul>
                    </li>

                    <!-- Administradores -->
                    <li>
                        <a href="#"><i class="fa fa-users fa-fw"></i> Administradores<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<c:out value="${url}"/>/admin/users"><i class="fa fa-list fa-fw"></i> Listar</a>
                            </li>
                            <li>
                                <a href="<c:out value="${url}"/>/admin/users/novo"><i class="fa fa-plus fa-fw"></i> Novo</a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>
        <!-- /.Menu Principal -->

    </nav>
    <!-- /.Navegação Topo e Menu -->

    <!-- Conteúdo das Paginas -->
    <div id="content">
