<%-- 
    Document   : menu2
    Created on : 20-sep-2022, 16:44:24
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
       <link rel="stylesheet" href="css/dist2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/Ionicons/css/ionicons.min.css">
        <link href="css/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css"/>

        <link rel="stylesheet" href="css/dist/css/skins/skin-blue.min.css">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

        <title>Menu</title>
    </head>
    <body  class="hold-transition skin-blue sidebar-mini">
        <aside class="main-sidebar">

            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">

                <!-- Sidebar user panel (optional) -->
                <div class="user-panel">

                    <div class="pull-center info">
                        <p>Bienvenido, Administrador </p>

                    </div>
                </div>

                <!-- search form (Optional) -->
                <form action="#" method="get" class="sidebar-form">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                </form>
                <!-- /.search form -->

                <!-- Sidebar Menu -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li class="header">INICIO</li>
                    <!-- Optionally, you can add icons to the links -->
                    <li class="active"><a href="#"><i class="fa fa-link"></i> <span>Panel Administrativo</span></a></li>
                    <li class="treeview">
                        <a href="#"><i class="glyphicon glyphicon-th-large"></i> <span>Registros</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="fa fa-archive"></i>Categorias</a></li>
                            <li><a href="#"><i class="fa fa-tags"></i>Marcas</a></li>
                            <li><a href="#"><i class="fa fa-cube"></i>Productos</a></li>
                            <li><a href="#"><i class="fa fa-users"></i>Clientes</a></li>
                            <li><a href="#"><i class="fa fa-truck"></i>Proveedores</a></li>
                            <li><a href=""><i class="fa fa-user-plus"></i>Empleados</a></li>
                            <li><a href="srvUsuario?accion=listarUsuarios"><i class="fa fa-address-card"></i>Usuarios</a></li>
                        </ul>
                    </li>

                    <li class="treeview">
                        <a href="#"><i class="fa fa-area-chart"></i> <span>Reportes</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="fa fa-bar-chart"></i>Reportes Ventas</a></li>
                        </ul>
                    </li>
                </ul>
                <!-- /.sidebar-menu -->
            </section>
            <!-- /.sidebar -->
        </aside>

        <script src="css/dist2/dist/js/bootstrap.min.js"></script>
        <script src="css/jquery/dist/jquery.min.js"></script>
        <script src="dist/js/adminlte.min.js"></script>
    </body>
</html>
