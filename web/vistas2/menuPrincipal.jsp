<%-- 
    Document   : menubien
    Created on : 22-sep-2022, 1:59:50
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Inicio</title>

        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="assets/plugins/fontawesome-free/css/all.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="assets/dist/css/adminlte.min.css">
        <!-- DataTables -->
        <!-- <link href="assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
         <link href="assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
         <link href="assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css"/> 
        -->
        <!--DataTable estilo-->
        <link href="assets/dist/css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body  class="hold-transition sidebar-mini ">
        <div class="wrapper">
            <!-- Navbar -->
            <nav class="main-header navbar navbar-expand navbar-white navbar-light" style="background: linear-gradient(180deg, rgba(254, 72, 72, 1) 0%, rgba(168, 6, 6, 1) 100%);">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                    </li>

                </ul>

                <ul class="navbar-nav ml-auto">
                    <!-- Navbar Search -->
                    <li class="nav-item">
                        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                            <i class="fas fa-search"></i>
                        </a>
                        <div class="navbar-search-block">
                            <form class="form-inline">
                                <div class="input-group input-group-sm">
                                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                                    <div class="input-group-append">
                                        <button class="btn btn-navbar" type="submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                        <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <!-- Messages Dropdown Menu -->

                    <!-- Notifications Dropdown Menu -->

                    <li class="nav-item">
                        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                            <i class="fas fa-expand-arrows-alt"></i>
                        </a>
                    </li>  
                    <li class="nav-item">
                        <a class="nav-link"  href="" role="button" >
                            <i class="fas fa fa-power-off"></i>
                        </a>
                    </li>

                </ul>

                <!-- Right navbar links -->

            </nav>
            <!-- /.navbar -->

            <!-- Main Sidebar Container -->
            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <!-- Brand Logo -->
                <a href="index3.html" class="brand-link">
                    <img src="assets/dist/img/logoTES4 .png" alt=""class="brand-image"/>
                    <span class="brand-text font-weight-light">Tecnologico Espiritu </span><br>
                </a>

                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel">
                        <div class="info" >
                            <p style=" margin-top:revert; color: white;text-align: center;font-size: 18px;font-weight: 600; font-family: system-ui;" >
                                Bienvenido, Administrador</p>

                        </div>
                    </div>

                    <!-- SidebarSearch Form -->
                    <div class="form-inline">
                        <div class="input-group" data-widget="sidebar-search">
                            <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                            <div class="input-group-append">
                                <button class="btn btn-sidebar">
                                    <i class="fas fa-search fa-fw"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Sidebar Menu -->
                    <nav class="mt-2">
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <!-- Add icons to the links using the .nav-icon class
                                 with font-awesome or any other icon font library -->
                            <li class="nav-item">
                                <a href="#" class="nav-link active">

                                    <i class="nav-icon fas fa-home"></i>
                                    <p>
                                        Inicio
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon fas fa-edit "></i>
                                    <p>
                                        Registros
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class="far fa fa-graduation-cap nav-icon"></i>
                                            <p>Carreras</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="modulos/header.jsp" class="nav-link ">
                                            <i class="fa fa-book nav-icon"></i>
                                            <p>Materias</p>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="../profesorControlador?accion=listar" class="nav-link">
                                            <i class="far fa fa-users nav-icon"></i>

                                            <p>Profesores</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="nav-item">
                                <a href="" class="nav-link">
                                    <i class="nav-icon fas fa-chart-pie"></i>
                                    <p>
                                        Reportes
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class=" nav-icon fas fa-copy"></i>
                                            <p>Consolidado mensual</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <!-- /.sidebar-menu -->
                </div>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Inicio</h1>
                            </div>
                            <div class="col-sm-6">
                                <!-- <ol class="breadcrumb float-sm-right">
                                     <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                                     
                                 </ol> 
                                -->
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">Listado de profesores</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <table id="example1" class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Rendering engine</th>
                                                    <th>Browser</th>
                                                    <th>Platform(s)</th>
                                                    <th>Engine version</th>
                                                    <th>CSS grade</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Trident</td>
                                                    <td>Internet
                                                        Explorer 4.0
                                                    </td>
                                                    <td>Win 95+</td>
                                                    <td> 4</td>
                                                    <td>X</td>
                                                </tr>
                                                <tr>
                                                    <td>Trident</td>
                                                    <td>Internet
                                                        Explorer 5.0
                                                    </td>
                                                    <td>Win 95+</td>
                                                    <td>5</td>
                                                    <td>C</td>
                                                </tr>
                                                <tr>
                                                    <td>Trident</td>
                                                    <td>Internet
                                                        Explorer 5.5
                                                    </td>
                                                    <td>Win 95+</td>
                                                    <td>5.5</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Trident</td>
                                                    <td>Internet
                                                        Explorer 6
                                                    </td>
                                                    <td>Win 98+</td>
                                                    <td>6</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 7</td>
                                                    <td>Win XP SP2+</td>
                                                    <td>7</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Trident</td>
                                                    <td>AOL browser (AOL desktop)</td>
                                                    <td>Win XP</td>
                                                    <td>6</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Firefox 1.0</td>
                                                    <td>Win 98+ / OSX.2+</td>
                                                    <td>1.7</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Firefox 1.5</td>
                                                    <td>Win 98+ / OSX.2+</td>
                                                    <td>1.8</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Firefox 2.0</td>
                                                    <td>Win 98+ / OSX.2+</td>
                                                    <td>1.8</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Firefox 3.0</td>
                                                    <td>Win 2k+ / OSX.3+</td>
                                                    <td>1.9</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Camino 1.0</td>
                                                    <td>OSX.2+</td>
                                                    <td>1.8</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Camino 1.5</td>
                                                    <td>OSX.3+</td>
                                                    <td>1.8</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Netscape 7.2</td>
                                                    <td>Win 95+ / Mac OS 8.6-9.2</td>
                                                    <td>1.7</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Netscape Browser 8</td>
                                                    <td>Win 98SE+</td>
                                                    <td>1.7</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Netscape Navigator 9</td>
                                                    <td>Win 98+ / OSX.2+</td>
                                                    <td>1.8</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Mozilla 1.0</td>
                                                    <td>Win 95+ / OSX.1+</td>
                                                    <td>1</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Mozilla 1.1</td>
                                                    <td>Win 95+ / OSX.1+</td>
                                                    <td>1.1</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Mozilla 1.2</td>
                                                    <td>Win 95+ / OSX.1+</td>
                                                    <td>1.2</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Mozilla 1.3</td>
                                                    <td>Win 95+ / OSX.1+</td>
                                                    <td>1.3</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Mozilla 1.4</td>
                                                    <td>Win 95+ / OSX.1+</td>
                                                    <td>1.4</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Mozilla 1.5</td>
                                                    <td>Win 95+ / OSX.1+</td>
                                                    <td>1.5</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Mozilla 1.6</td>
                                                    <td>Win 95+ / OSX.1+</td>
                                                    <td>1.6</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Mozilla 1.7</td>
                                                    <td>Win 98+ / OSX.1+</td>
                                                    <td>1.7</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Mozilla 1.8</td>
                                                    <td>Win 98+ / OSX.1+</td>
                                                    <td>1.8</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Seamonkey 1.1</td>
                                                    <td>Win 98+ / OSX.2+</td>
                                                    <td>1.8</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Gecko</td>
                                                    <td>Epiphany 2.20</td>
                                                    <td>Gnome</td>
                                                    <td>1.8</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Webkit</td>
                                                    <td>Safari 1.2</td>
                                                    <td>OSX.3</td>
                                                    <td>125.5</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Webkit</td>
                                                    <td>Safari 1.3</td>
                                                    <td>OSX.3</td>
                                                    <td>312.8</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Webkit</td>
                                                    <td>Safari 2.0</td>
                                                    <td>OSX.4+</td>
                                                    <td>419.3</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Webkit</td>
                                                    <td>Safari 3.0</td>
                                                    <td>OSX.4+</td>
                                                    <td>522.1</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Webkit</td>
                                                    <td>OmniWeb 5.5</td>
                                                    <td>OSX.4+</td>
                                                    <td>420</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Webkit</td>
                                                    <td>iPod Touch / iPhone</td>
                                                    <td>iPod</td>
                                                    <td>420.1</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Webkit</td>
                                                    <td>S60</td>
                                                    <td>S60</td>
                                                    <td>413</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Presto</td>
                                                    <td>Opera 7.0</td>
                                                    <td>Win 95+ / OSX.1+</td>
                                                    <td>-</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Presto</td>
                                                    <td>Opera 7.5</td>
                                                    <td>Win 95+ / OSX.2+</td>
                                                    <td>-</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Presto</td>
                                                    <td>Opera 8.0</td>
                                                    <td>Win 95+ / OSX.2+</td>
                                                    <td>-</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Presto</td>
                                                    <td>Opera 8.5</td>
                                                    <td>Win 95+ / OSX.2+</td>
                                                    <td>-</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Presto</td>
                                                    <td>Opera 9.0</td>
                                                    <td>Win 95+ / OSX.3+</td>
                                                    <td>-</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Presto</td>
                                                    <td>Opera 9.2</td>
                                                    <td>Win 88+ / OSX.3+</td>
                                                    <td>-</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Presto</td>
                                                    <td>Opera 9.5</td>
                                                    <td>Win 88+ / OSX.3+</td>
                                                    <td>-</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Presto</td>
                                                    <td>Opera for Wii</td>
                                                    <td>Wii</td>
                                                    <td>-</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Presto</td>
                                                    <td>Nokia N800</td>
                                                    <td>N800</td>
                                                    <td>-</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Presto</td>
                                                    <td>Nintendo DS browser</td>
                                                    <td>Nintendo DS</td>
                                                    <td>8.5</td>
                                                    <td>C/A<sup>1</sup></td>
                                                </tr>
                                                <tr>
                                                    <td>KHTML</td>
                                                    <td>Konqureror 3.1</td>
                                                    <td>KDE 3.1</td>
                                                    <td>3.1</td>
                                                    <td>C</td>
                                                </tr>
                                                <tr>
                                                    <td>KHTML</td>
                                                    <td>Konqureror 3.3</td>
                                                    <td>KDE 3.3</td>
                                                    <td>3.3</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>KHTML</td>
                                                    <td>Konqureror 3.5</td>
                                                    <td>KDE 3.5</td>
                                                    <td>3.5</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Tasman</td>
                                                    <td>Internet Explorer 4.5</td>
                                                    <td>Mac OS 8-9</td>
                                                    <td>-</td>
                                                    <td>X</td>
                                                </tr>
                                                <tr>
                                                    <td>Tasman</td>
                                                    <td>Internet Explorer 5.1</td>
                                                    <td>Mac OS 7.6-9</td>
                                                    <td>1</td>
                                                    <td>C</td>
                                                </tr>
                                                <tr>
                                                    <td>Tasman</td>
                                                    <td>Internet Explorer 5.2</td>
                                                    <td>Mac OS 8-X</td>
                                                    <td>1</td>
                                                    <td>C</td>
                                                </tr>
                                                <tr>
                                                    <td>Misc</td>
                                                    <td>NetFront 3.1</td>
                                                    <td>Embedded devices</td>
                                                    <td>-</td>
                                                    <td>C</td>
                                                </tr>
                                                <tr>
                                                    <td>Misc</td>
                                                    <td>NetFront 3.4</td>
                                                    <td>Embedded devices</td>
                                                    <td>-</td>
                                                    <td>A</td>
                                                </tr>
                                                <tr>
                                                    <td>Misc</td>
                                                    <td>Dillo 0.8</td>
                                                    <td>Embedded devices</td>
                                                    <td>-</td>
                                                    <td>X</td>
                                                </tr>
                                                <tr>
                                                    <td>Misc</td>
                                                    <td>Links</td>
                                                    <td>Text only</td>
                                                    <td>-</td>
                                                    <td>X</td>
                                                </tr>
                                                <tr>
                                                    <td>Misc</td>
                                                    <td>Lynx</td>
                                                    <td>Text only</td>
                                                    <td>-</td>
                                                    <td>X</td>
                                                </tr>
                                                <tr>
                                                    <td>Misc</td>
                                                    <td>IE Mobile</td>
                                                    <td>Windows Mobile 6</td>
                                                    <td>-</td>
                                                    <td>C</td>
                                                </tr>
                                                <tr>
                                                    <td>Misc</td>
                                                    <td>PSP browser</td>
                                                    <td>PSP</td>
                                                    <td>-</td>
                                                    <td>C</td>
                                                </tr>
                                                <tr>
                                                    <td>Other browsers</td>
                                                    <td>All others</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>U</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <!-- /.card -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->
                </section>
                <!-- /.content -->
            </div>
            <!-- Main Footer -->
            <footer class="main-footer">
                <!-- To the right -->
                <div class="float-right d-none d-sm-inline">
                    <a href="#">Terminos y condiciones</a>
                    <span> | </span>
                    <a href="#">Politicas de privacidad</a>
                    <span> | </span>

                </div>
                <!-- Default to the left -->
                <strong>Copyright © 2012 - 2022 Tecnológico Espíritu Santo</a>.</strong> Todos los derechos reservados
            </footer>



            <!-- REQUIRED SCRIPTS -->

            <!-- jQuery -->
            <script src="assets/plugins/jquery/jquery.min.js"></script>
            <!-- Bootstrap 4 -->
            <script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
            <!-- AdminLTE App -->
            <script src="assets/dist/js/adminlte.min.js"></script>


            <!-- DataTables  & Plugins -->
            <!-- <script src="assets/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
             <script src="assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
             <script src="assets/plugins/datatables-responsive/js/dataTables.responsive.min.js" type="text/javascript"></script>
             <script src="assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js" type="text/javascript"></script>
             <script src="assets/plugins/datatables-buttons/js/dataTables.buttons.min.js" type="text/javascript"></script>
             <script src="assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js" type="text/javascript"></script>
             <script src="assets/plugins/jszip/jszip.min.js" type="text/javascript"></script>
             <script src="assets/plugins/pdfmake/pdfmake.min.js" type="text/javascript"></script>
             <script src="assets/plugins/pdfmake/vfs_fonts.js" type="text/javascript"></script>
             <script src="assets/plugins/datatables-buttons/js/buttons.html5.min.js" type="text/javascript"></script>
             <script src="assets/plugins/datatables-buttons/js/buttons.print.min.js" type="text/javascript"></script>
             <script src="assets/plugins/datatables-buttons/js/buttons.colVis.min.js" type="text/javascript"></script>
            -->

            <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>

            <script>
                $(function () {
                    $("#example1").DataTable({
                        "responsive": true, "lengthChange": false, "autoWidth": false,
                        "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
                        "language": {"url": "https://cdn.datatables.net/plug-ins/1.12.1/i18n/es-ES.json"}

                    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
                });

                $(function ($) {
                    let url = window.location.href;
                    $('nav ul li a').each(function () {
                        if (this.href === url) {
                            $(this).closest('li').addClass('active');
                        }
                    });
                });

            </script>
    </body>
</html>
